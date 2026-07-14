<#
.SYNOPSIS
    Lists applications detected on Intune-managed devices in a tenant, optionally including device associations.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDetectedApps.

.PARAMETER DeviceID
    The DeviceID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER IncludeDevices
    The IncludeDevices value sent to the CIPP API.

.EXAMPLE
    Get-CIPPDetectedApps -DeviceID '<DeviceID>' -CustomerTenantID '<CustomerTenantID>' -IncludeDevices '<IncludeDevices>'
#>
function Get-CIPPDetectedApps {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$DeviceID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [switch]$IncludeDevices

    )

    Write-Verbose 'Retrieving ListDetectedApps from the CIPP API'

    $endpoint = '/api/ListDetectedApps'
    $params = @{
        DeviceID                   = $DeviceID
        tenantFilter               = $CustomerTenantID
        includeDevices             = $IncludeDevices.IsPresent
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
