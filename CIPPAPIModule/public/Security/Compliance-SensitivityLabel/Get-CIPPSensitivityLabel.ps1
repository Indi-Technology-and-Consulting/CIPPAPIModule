<#
.SYNOPSIS
    Lists sensitivity labels and label policies configured in the Security & Compliance Center for a tenant.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSensitivityLabel.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPSensitivityLabel -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPSensitivityLabel {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListSensitivityLabel from the CIPP API'

    $endpoint = '/api/ListSensitivityLabel'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
