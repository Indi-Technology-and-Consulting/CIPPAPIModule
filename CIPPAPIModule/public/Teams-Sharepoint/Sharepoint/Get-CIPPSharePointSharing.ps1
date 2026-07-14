<#
.SYNOPSIS
    ListSharePointSharing.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSharePointSharing.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPSharePointSharing -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPSharePointSharing {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListSharePointSharing from the CIPP API'

    $endpoint = '/api/ListSharePointSharing'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
