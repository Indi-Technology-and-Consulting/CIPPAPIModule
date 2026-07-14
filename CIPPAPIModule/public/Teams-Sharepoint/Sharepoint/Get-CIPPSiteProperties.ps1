<#
.SYNOPSIS
    ListSiteProperties.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSiteProperties.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER SiteURL
    The SiteURL value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSiteProperties -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
#>
function Get-CIPPSiteProperties {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$SiteURL

    )

    Write-Verbose 'Retrieving ListSiteProperties from the CIPP API'

    $endpoint = '/api/ListSiteProperties'
    $params = @{
        tenantFilter               = $CustomerTenantID
        SiteUrl                    = $SiteURL
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
