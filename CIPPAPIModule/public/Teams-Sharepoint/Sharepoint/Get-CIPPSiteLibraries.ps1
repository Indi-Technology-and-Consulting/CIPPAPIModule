<#
.SYNOPSIS
    ListSiteLibraries.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSiteLibraries.

.PARAMETER SiteID
    The SiteID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER SiteURL
    The SiteURL value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSiteLibraries -SiteID '<SiteID>' -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
#>
function Get-CIPPSiteLibraries {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$SiteID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$SiteURL

    )

    Write-Verbose 'Retrieving ListSiteLibraries from the CIPP API'

    $endpoint = '/api/ListSiteLibraries'
    $params = @{
        SiteId                     = $SiteID
        tenantFilter               = $CustomerTenantID
        SiteUrl                    = $SiteURL
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('SiteID')) { $body['SiteId'] = $SiteID }
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('SiteURL')) { $body['SiteUrl'] = $SiteURL }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
