<#
.SYNOPSIS
    ListCopilotUsage.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCopilotUsage.

.PARAMETER Period
    The Period value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Type
    The Type value sent to the CIPP API.

.EXAMPLE
    Get-CIPPCopilotUsage -Period '<Period>' -CustomerTenantID '<CustomerTenantID>' -Type '<Type>'
#>
function Get-CIPPCopilotUsage {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Period,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$Type

    )

    Write-Verbose 'Retrieving ListCopilotUsage from the CIPP API'

    $endpoint = '/api/ListCopilotUsage'
    $params = @{
        period                     = $Period
        tenantFilter               = $CustomerTenantID
        Type                       = $Type
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('Period')) { $body['period'] = $Period }
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('Type')) { $body['Type'] = $Type }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
