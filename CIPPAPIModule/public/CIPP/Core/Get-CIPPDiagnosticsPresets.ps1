<#
.SYNOPSIS
    Lists saved diagnostics presets used for troubleshooting CIPP configuration.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDiagnosticsPresets.

.EXAMPLE
    Get-CIPPDiagnosticsPresets
#>
function Get-CIPPDiagnosticsPresets {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListDiagnosticsPresets from the CIPP API'

    $endpoint = '/api/ListDiagnosticsPresets'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
