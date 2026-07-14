<#
.SYNOPSIS
    Lists the current remediation state of standards applied to a specific tenant, including last check results.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListStandardsCurrentState.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPStandardsCurrentState -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPStandardsCurrentState {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListStandardsCurrentState from the CIPP API'

    $endpoint = '/api/ListStandardsCurrentState'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
