<#
.SYNOPSIS
    ListAlertResults.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAlertResults.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAlertResults -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAlertResults {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAlertResults from the CIPP API'

    $endpoint = '/api/ListAlertResults'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
