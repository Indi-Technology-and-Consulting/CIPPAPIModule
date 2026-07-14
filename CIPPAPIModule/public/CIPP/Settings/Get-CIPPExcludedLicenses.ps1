<#
.SYNOPSIS
    Lists license SKUs that have been excluded from CIPP license counts and reporting.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListExcludedLicenses.

.EXAMPLE
    Get-CIPPExcludedLicenses
#>
function Get-CIPPExcludedLicenses {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListExcludedLicenses from the CIPP API'

    $endpoint = '/api/ListExcludedLicenses'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
