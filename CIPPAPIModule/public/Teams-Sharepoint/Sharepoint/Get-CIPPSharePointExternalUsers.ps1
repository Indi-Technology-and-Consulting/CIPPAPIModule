<#
.SYNOPSIS
    ListSharePointExternalUsers.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSharePointExternalUsers.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPSharePointExternalUsers -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPSharePointExternalUsers {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListSharePointExternalUsers from the CIPP API'

    $endpoint = '/api/ListSharePointExternalUsers'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
