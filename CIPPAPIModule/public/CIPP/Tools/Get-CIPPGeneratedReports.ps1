<#
.SYNOPSIS
    Lists generated reports from the CIPP Report Builder, filterable by tenant or report GUID.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGeneratedReports.

.PARAMETER ReportGUID
    The ReportGUID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPGeneratedReports -ReportGUID '<ReportGUID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPGeneratedReports {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ReportGUID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListGeneratedReports from the CIPP API'

    $endpoint = '/api/ListGeneratedReports'
    $params = @{
        ReportGUID                 = $ReportGUID
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
