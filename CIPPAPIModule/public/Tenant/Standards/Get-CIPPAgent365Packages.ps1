<#
.SYNOPSIS
    ListAgent365Packages.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAgent365Packages.

.PARAMETER Filter
    The Filter value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAgent365Packages -Filter '<Filter>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAgent365Packages {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Filter,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAgent365Packages from the CIPP API'

    $endpoint = '/api/ListAgent365Packages'
    $params = @{
        Filter                     = $Filter
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('Filter')) { $body['Filter'] = $Filter }
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
