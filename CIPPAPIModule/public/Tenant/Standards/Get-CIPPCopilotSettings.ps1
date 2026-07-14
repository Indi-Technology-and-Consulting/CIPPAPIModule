<#
.SYNOPSIS
    ListCopilotSettings.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCopilotSettings.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPCopilotSettings -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPCopilotSettings {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListCopilotSettings from the CIPP API'

    $endpoint = '/api/ListCopilotSettings'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
