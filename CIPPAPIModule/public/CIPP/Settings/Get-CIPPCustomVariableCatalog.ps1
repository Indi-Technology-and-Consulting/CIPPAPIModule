<#
.SYNOPSIS
    Lists custom variables configured in CIPP for use in templates and automation.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCustomVariables.

.PARAMETER IncludeSystem
    The IncludeSystem value sent to the CIPP API.

.PARAMETER ExcludeGlobalReserved
    The ExcludeGlobalReserved value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPCustomVariableCatalog -IncludeSystem '<IncludeSystem>' -ExcludeGlobalReserved '<ExcludeGlobalReserved>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPCustomVariableCatalog {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [switch]$IncludeSystem,

        [Parameter(Mandatory = $false)]
        [switch]$ExcludeGlobalReserved,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListCustomVariables from the CIPP API'

    $endpoint = '/api/ListCustomVariables'
    $params = @{
        includeSystem              = $IncludeSystem.IsPresent
        excludeGlobalReserved      = $ExcludeGlobalReserved.IsPresent
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
