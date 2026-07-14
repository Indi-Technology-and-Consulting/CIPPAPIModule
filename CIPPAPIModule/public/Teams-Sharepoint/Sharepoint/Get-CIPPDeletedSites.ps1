<#
.SYNOPSIS
    ListDeletedSites.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDeletedSites.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPDeletedSites -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPDeletedSites {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListDeletedSites from the CIPP API'

    $endpoint = '/api/ListDeletedSites'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
