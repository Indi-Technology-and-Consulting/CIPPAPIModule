<#
.SYNOPSIS
    Lists members of a specific SharePoint site by site ID, including user display names and email addresses.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSiteMembers.

.PARAMETER SiteID
    The SiteID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Filter
    The Filter value sent to the CIPP API.

.PARAMETER SiteURL
    The SiteURL value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSiteMembers -SiteID '<SiteID>' -CustomerTenantID '<CustomerTenantID>' -Filter '<Filter>' -SiteURL '<SiteURL>'
#>
function Get-CIPPSiteMembers {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$SiteID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$Filter,

        [Parameter(Mandatory = $false)]
        [string]$SiteURL

    )

    Write-Verbose 'Retrieving ListSiteMembers from the CIPP API'

    $endpoint = '/api/ListSiteMembers'
    $params = @{
        SiteId                     = $SiteID
        tenantFilter               = $CustomerTenantID
        Filter                     = $Filter
        SiteUrl                    = $SiteURL
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
