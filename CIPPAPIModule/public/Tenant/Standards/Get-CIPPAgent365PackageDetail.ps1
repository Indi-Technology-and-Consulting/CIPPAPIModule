<#
.SYNOPSIS
    ListAgent365PackageDetail.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAgent365PackageDetail.

.PARAMETER ID
    The ID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAgent365PackageDetail -ID '<ID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAgent365PackageDetail {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$ID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAgent365PackageDetail from the CIPP API'

    $endpoint = '/api/ListAgent365PackageDetail'
    $params = @{
        id                         = $ID
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['id'] = $ID
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
