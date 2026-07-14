<#
.SYNOPSIS
    ListSiteRecycleBin.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSiteRecycleBin.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER SiteURL
    The SiteURL value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSiteRecycleBin -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
#>
function Get-CIPPSiteRecycleBin {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$SiteURL

    )

    Write-Verbose 'Retrieving ListSiteRecycleBin from the CIPP API'

    $endpoint = '/api/ListSiteRecycleBin'
    $params = @{
        tenantFilter               = $CustomerTenantID
        SiteUrl                    = $SiteURL
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
