<#
.SYNOPSIS
    Retrieves cached tenant data from the CIPP reporting database (CippReportingDB).

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDBCache.

.PARAMETER Type
    The Type value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPDBCache -Type '<Type>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPDBCache {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Type,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListDBCache from the CIPP API'

    $endpoint = '/api/ListDBCache'
    $params = @{
        type                       = $Type
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
