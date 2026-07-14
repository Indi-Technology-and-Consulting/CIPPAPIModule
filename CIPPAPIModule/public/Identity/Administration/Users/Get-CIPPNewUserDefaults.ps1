<#
.SYNOPSIS
    Lists default templates for new user creation, including default domain, usage location, and license assignments.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListNewUserDefaults.

.PARAMETER IncludeAllTenants
    The IncludeAllTenants value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPNewUserDefaults -IncludeAllTenants '<IncludeAllTenants>' -CustomerTenantID '<CustomerTenantID>' -ID '<ID>'
#>
function Get-CIPPNewUserDefaults {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [switch]$IncludeAllTenants,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListNewUserDefaults from the CIPP API'

    $endpoint = '/api/ListNewUserDefaults'
    $params = @{
        includeAllTenants          = $IncludeAllTenants.IsPresent
        tenantFilter               = $CustomerTenantID
        ID                         = $ID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('IncludeAllTenants')) { $body['includeAllTenants'] = $IncludeAllTenants.IsPresent }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
