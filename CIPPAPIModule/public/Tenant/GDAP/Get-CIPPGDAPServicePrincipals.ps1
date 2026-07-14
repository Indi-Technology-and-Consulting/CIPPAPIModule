<#
.SYNOPSIS
    Lists service principals in a customer tenant owned by the partner or specified vendor tenant IDs, useful for identif.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGDAPServicePrincipals.

.PARAMETER VendorTenantIds
    The VendorTenantIds value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER OwnerType
    The OwnerType value sent to the CIPP API.

.EXAMPLE
    Get-CIPPGDAPServicePrincipals -VendorTenantIds '<VendorTenantIds>' -CustomerTenantID '<CustomerTenantID>' -OwnerType '<OwnerType>'
#>
function Get-CIPPGDAPServicePrincipals {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$VendorTenantIds,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$OwnerType

    )

    Write-Verbose 'Retrieving ListGDAPServicePrincipals from the CIPP API'

    $endpoint = '/api/ListGDAPServicePrincipals'
    $params = @{
        vendorTenantIds            = $VendorTenantIds
        tenantFilter               = $CustomerTenantID
        ownerType                  = $OwnerType
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
