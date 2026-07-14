<#
.SYNOPSIS
    Lists all available test reports from JSON files and database.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListTestReports.

.EXAMPLE
    Get-CIPPTestReports
#>
function Get-CIPPTestReports {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListTestReports from the CIPP API'

    $endpoint = '/api/ListTestReports'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
