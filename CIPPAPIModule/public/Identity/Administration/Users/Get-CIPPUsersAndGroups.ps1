<#
.SYNOPSIS
    Lists both users and groups for a tenant in a single batch call, returning ID and display name for selection/lookup p.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListUsersAndGroups.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPUsersAndGroups -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPUsersAndGroups {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListUsersAndGroups from the CIPP API'

    $endpoint = '/api/ListUsersAndGroups'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
