<#
.SYNOPSIS
    Lists tenants available for offboarding, including tenants in error state.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListOffboardTenants.

.EXAMPLE
    Get-CIPPOffboardTenants
#>
function Get-CIPPOffboardTenants {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListOffboardTenants from the CIPP API'

    $endpoint = '/api/ListOffboardTenants'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
