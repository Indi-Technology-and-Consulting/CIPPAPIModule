<#
.SYNOPSIS
    Lists tests for a tenant, optionally filtered by report ID.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListTests.

.PARAMETER ReportID
    The ReportID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPTests -ReportID '<ReportID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPTests {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ReportID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListTests from the CIPP API'

    $endpoint = '/api/ListTests'
    $params = @{
        reportId                   = $ReportID
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('ReportID')) { $body['reportId'] = $ReportID }
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
