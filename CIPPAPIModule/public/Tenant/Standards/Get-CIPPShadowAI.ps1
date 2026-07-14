<#
.SYNOPSIS
    ListShadowAI.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListShadowAI.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPShadowAI -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPShadowAI {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListShadowAI from the CIPP API'

    $endpoint = '/api/ListShadowAI'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
