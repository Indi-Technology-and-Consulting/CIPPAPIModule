<#
.SYNOPSIS
    Lists saved Report Builder templates that define custom report configurations with data blocks and formatting.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListReportBuilderTemplates.

.EXAMPLE
    Get-CIPPReportBuilderTemplates
#>
function Get-CIPPReportBuilderTemplates {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListReportBuilderTemplates from the CIPP API'

    $endpoint = '/api/ListReportBuilderTemplates'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
