<#
.SYNOPSIS
    This function is used to list the Safe Links policies in the tenant, including unmatched rules and policies.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSafeLinksPolicy.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPSafeLinksPolicy -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPSafeLinksPolicy {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListSafeLinksPolicy from the CIPP API'

    $endpoint = '/api/ListSafeLinksPolicy'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
