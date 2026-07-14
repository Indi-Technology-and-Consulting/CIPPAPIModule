<#
.SYNOPSIS
    Lists CIPP feature flags and their enabled/disabled state, including environment-driven overrides.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListFeatureFlags.

.EXAMPLE
    Get-CIPPFeatureFlags
#>
function Get-CIPPFeatureFlags {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListFeatureFlags from the CIPP API'

    $endpoint = '/api/ListFeatureFlags'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
