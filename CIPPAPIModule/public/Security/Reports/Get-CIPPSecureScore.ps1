<#
.SYNOPSIS
Retrieves the Microsoft Secure Score for a specified customer tenant.

.DESCRIPTION
The Get-CIPPSecureScore function queries the Microsoft Secure Score for a customer tenant via
CIPP and returns the latest snapshot enriched the same way the CIPP portal does: it computes the
overall percentage and comparative percentages, and joins the per-control breakdown with the
control profile metadata (title, threats, compliance frameworks).

.PARAMETER CustomerTenantID
The unique identifier of the customer tenant for which the secure score is retrieved.

.EXAMPLE
Get-CIPPSecureScore -CustomerTenantID "contoso.onmicrosoft.com"
#>
function Get-CIPPSecureScore {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID
    )

    Write-Verbose "Getting secure score for $CustomerTenantID."
    $Endpoint = '/api/ListGraphRequest'

    $Scores = (Invoke-CIPPRestMethod -Endpoint $Endpoint -Params @{
            tenantFilter = $CustomerTenantID
            Endpoint     = 'security/secureScores'
            '$count'     = $true
            noPagination = $true
            '$top'       = 7
        }).Results

    $Latest = $Scores | Select-Object -First 1
    if (-not $Latest) {
        Write-Verbose 'No secure score data returned.'
        return
    }

    # Profile metadata for control titles/threats/compliance - matched by id == controlName.
    $Profiles = (Invoke-CIPPRestMethod -Endpoint $Endpoint -Params @{
            tenantFilter = $CustomerTenantID
            Endpoint     = 'security/secureScoreControlProfiles'
            '$count'     = $true
            '$top'       = 999
        }).Results
    $ProfileLookup = @{}
    foreach ($ControlProfile in $Profiles) { $ProfileLookup[$ControlProfile.id] = $ControlProfile }

    $ControlScores = foreach ($Control in $Latest.controlScores) {
        $Match = $ProfileLookup[$Control.controlName]
        [pscustomobject]@{
            ControlName           = $Control.controlName
            Title                 = $Match.title
            ScoreInPercentage     = $Control.scoreInPercentage
            Score                 = $Control.score
            Description           = $Control.description
            Threats               = $Match.threats
            ComplianceInformation = $Match.complianceInformation
            Remediation           = $Match.remediation
            RemediationImpact     = $Match.remediationImpact
            ImplementationCost    = $Match.implementationCost
            Tier                  = $Match.tier
            UserImpact            = $Match.userImpact
            ActionUrl             = $Match.actionUrl
            VendorInformation     = $Match.vendorInformation
            # Portal hides the 'Default' baseline entries; mirror that.
            ControlStateUpdates   = @($Match.controlStateUpdates | Where-Object { $_.state -ne 'Default' })
        }
    }

    [pscustomobject]@{
        CurrentScore           = $Latest.currentScore
        MaxScore               = $Latest.maxScore
        PercentageCurrent      = if ($Latest.maxScore) { [math]::Round(($Latest.currentScore / $Latest.maxScore) * 100) } else { 0 }
        PercentageVsAllTenants = [math]::Round([double]$Latest.averageComparativeScores[0].averageScore)
        PercentageVsSimilar    = [math]::Round([double]$Latest.averageComparativeScores[1].averageScore)
        CreatedDateTime        = $Latest.createdDateTime
        ControlScores          = $ControlScores
        History                = $Scores
    }
}
