<#
.SYNOPSIS
    Lists Microsoft partner contracts (customer tenant relationships) from the Graph API.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGDAPContracts.

.EXAMPLE
    Get-CIPPGDAPContracts
#>
function Get-CIPPGDAPContracts {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListGDAPContracts from the CIPP API'

    $endpoint = '/api/ListGDAPContracts'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
