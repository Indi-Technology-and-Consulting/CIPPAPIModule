<#
.SYNOPSIS
    Lists Windows Autopilot device identities registered in a tenant.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAPDevices.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAPDevices -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAPDevices {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAPDevices from the CIPP API'

    $endpoint = '/api/ListAPDevices'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
