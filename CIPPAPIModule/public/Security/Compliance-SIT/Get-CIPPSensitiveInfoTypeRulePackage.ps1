<#
.SYNOPSIS
    ListSensitiveInfoTypeRulePackage.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSensitiveInfoTypeRulePackage.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER RulePackID
    The RulePackID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSensitiveInfoTypeRulePackage -CustomerTenantID '<CustomerTenantID>' -RulePackID '<RulePackID>'
#>
function Get-CIPPSensitiveInfoTypeRulePackage {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$RulePackID

    )

    Write-Verbose 'Retrieving ListSensitiveInfoTypeRulePackage from the CIPP API'

    $endpoint = '/api/ListSensitiveInfoTypeRulePackage'
    $params = @{
        tenantFilter               = $CustomerTenantID
        RulePackId                 = $RulePackID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('RulePackID')) { $body['RulePackId'] = $RulePackID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
