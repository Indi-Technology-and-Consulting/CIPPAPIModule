<#
.SYNOPSIS
    Retrieves the indirect reseller relationship invitation link from Partner Center for onboarding new customer tenants.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListResellerRelationshipLink.

.EXAMPLE
    Get-CIPPResellerRelationshipLink
#>
function Get-CIPPResellerRelationshipLink {
    [CmdletBinding()]
    param ()

    Write-Verbose 'Retrieving ListResellerRelationshipLink from the CIPP API'

    $endpoint = '/api/ListResellerRelationshipLink'
    Invoke-CIPPRestMethod -Endpoint $endpoint
}
