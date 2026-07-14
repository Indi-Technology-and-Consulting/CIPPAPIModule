<#
.SYNOPSIS
    Lists Intune-managed devices that have a specific detected application installed, identified by App ID.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDetectedAppDevices.

.PARAMETER AppID
    The AppID value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPDetectedAppDevices -AppID '<AppID>' -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPDetectedAppDevices {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$AppID,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListDetectedAppDevices from the CIPP API'

    $endpoint = '/api/ListDetectedAppDevices'
    $params = @{
        AppID                      = $AppID
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
