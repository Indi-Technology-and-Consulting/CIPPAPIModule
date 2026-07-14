<#
.SYNOPSIS
    ListCVEManagement.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCVEManagement.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER UseReportDB
    The UseReportDB value sent to the CIPP API.

.EXAMPLE
    Get-CIPPCVEManagement -CustomerTenantID '<CustomerTenantID>' -UseReportDB '<UseReportDB>'
#>
function Get-CIPPCVEManagement {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [switch]$UseReportDB

    )

    Write-Verbose 'Retrieving ListCVEManagement from the CIPP API'

    $endpoint = '/api/ListCVEManagement'
    $params = @{
        tenantFilter               = $CustomerTenantID
        UseReportDB                = $UseReportDB.IsPresent
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
