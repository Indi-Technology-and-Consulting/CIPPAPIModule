<#
.SYNOPSIS
    Lists GDAP delegated admin relationships with customer tenants, with optional filtering by relationship ID or OData f.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGDAPRelationships.

.PARAMETER ID
    The ID value sent to the CIPP API.

.PARAMETER StandardsExcludeAllTenants
    The StandardsExcludeAllTenants value sent to the CIPP API.

.PARAMETER IgnoreMissingRoles
    The IgnoreMissingRoles value sent to the CIPP API.

.PARAMETER RemapRoles
    The RemapRoles value sent to the CIPP API.

.PARAMETER GDAPRoles
    The GDAPRoles value sent to the CIPP API.

.EXAMPLE
    Get-CIPPGDAPRelationships -ID '<ID>' -StandardsExcludeAllTenants '<StandardsExcludeAllTenants>' -IgnoreMissingRoles '<IgnoreMissingRoles>' -RemapRoles '<RemapRoles>' -GDAPRoles '<GDAPRoles>'
#>
function Get-CIPPGDAPRelationships {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID,

        [Parameter(Mandatory = $false)]
        [string]$StandardsExcludeAllTenants,

        [Parameter(Mandatory = $false)]
        [switch]$IgnoreMissingRoles,

        [Parameter(Mandatory = $false)]
        [switch]$RemapRoles,

        [Parameter(Mandatory = $false)]
        [string]$GDAPRoles

    )

    Write-Verbose 'Retrieving ListGDAPRelationships from the CIPP API'

    $endpoint = '/api/ListGDAPRelationships'
    $params = @{
        id                         = $ID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('StandardsExcludeAllTenants')) { $body['standardsExcludeAllTenants'] = $StandardsExcludeAllTenants }
    if ($PSBoundParameters.ContainsKey('IgnoreMissingRoles')) { $body['ignoreMissingRoles'] = $IgnoreMissingRoles.IsPresent }
    if ($PSBoundParameters.ContainsKey('RemapRoles')) { $body['remapRoles'] = $RemapRoles.IsPresent }
    if ($PSBoundParameters.ContainsKey('GDAPRoles')) { $body['gdapRoles'] = $GDAPRoles }
    if ($PSBoundParameters.ContainsKey('ID')) { $body['id'] = $ID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
