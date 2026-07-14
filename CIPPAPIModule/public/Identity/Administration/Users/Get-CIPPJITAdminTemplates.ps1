<#
.SYNOPSIS
    Lists Just-in-Time admin role templates that define temporary admin role assignments.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListJITAdminTemplates.

.PARAMETER IncludeAllTenants
    The IncludeAllTenants value sent to the CIPP API.

.PARAMETER GUID
    The GUID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPJITAdminTemplates -IncludeAllTenants '<IncludeAllTenants>' -GUID '<GUID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPJITAdminTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [switch]$IncludeAllTenants,

        [Parameter(Mandatory = $false)]
        [string]$GUID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListJITAdminTemplates from the CIPP API'

    $endpoint = '/api/ListJITAdminTemplates'
    $params = @{
        includeAllTenants          = $IncludeAllTenants.IsPresent
        GUID                       = $GUID
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('IncludeAllTenants')) { $body['includeAllTenants'] = $IncludeAllTenants.IsPresent }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
