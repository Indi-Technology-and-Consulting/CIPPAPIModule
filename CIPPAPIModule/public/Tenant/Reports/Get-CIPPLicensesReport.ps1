<#
.SYNOPSIS
    Lists a detailed license overview across all tenants or a single tenant, including SKU breakdowns, costs, and availab.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListLicensesReport.

.PARAMETER QueueID
    The QueueID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPLicensesReport -QueueID '<QueueID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPLicensesReport {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$QueueID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListLicensesReport from the CIPP API'

    $endpoint = '/api/ListLicensesReport'
    $params = @{
        QueueId                    = $QueueID
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
