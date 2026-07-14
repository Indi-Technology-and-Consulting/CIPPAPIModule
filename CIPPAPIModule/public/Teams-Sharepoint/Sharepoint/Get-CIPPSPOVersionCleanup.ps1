<#
.SYNOPSIS
    ListSPOVersionCleanup.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSPOVersionCleanup.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER SiteURL
    The SiteURL value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSPOVersionCleanup -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
#>
function Get-CIPPSPOVersionCleanup {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$SiteURL

    )

    Write-Verbose 'Retrieving ListSPOVersionCleanup from the CIPP API'

    $endpoint = '/api/ListSPOVersionCleanup'
    $params = @{
        tenantFilter               = $CustomerTenantID
        SiteUrl                    = $SiteURL
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('SiteURL')) { $body['SiteUrl'] = $SiteURL }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
