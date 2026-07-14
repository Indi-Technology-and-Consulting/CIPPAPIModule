<#
.SYNOPSIS
    Lists all ActiveSync mobile devices registered across Exchange Online mailboxes in a tenant.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListActiveSyncDevices.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPActiveSyncDevices -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPActiveSyncDevices {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListActiveSyncDevices from the CIPP API'

    $endpoint = '/api/ListActiveSyncDevices'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
