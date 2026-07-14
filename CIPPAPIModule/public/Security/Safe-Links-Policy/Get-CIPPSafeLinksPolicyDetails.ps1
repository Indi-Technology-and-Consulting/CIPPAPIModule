<#
.SYNOPSIS
    This function retrieves details for a specific Safe Links policy and rule.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSafeLinksPolicyDetails.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER PolicyName
    The PolicyName value sent to the CIPP API.

.PARAMETER RuleName
    The RuleName value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSafeLinksPolicyDetails -CustomerTenantID '<CustomerTenantID>' -PolicyName '<PolicyName>' -RuleName '<RuleName>'
#>
function Get-CIPPSafeLinksPolicyDetails {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$PolicyName,

        [Parameter(Mandatory = $false)]
        [string]$RuleName

    )

    Write-Verbose 'Retrieving ListSafeLinksPolicyDetails from the CIPP API'

    $endpoint = '/api/ListSafeLinksPolicyDetails'
    $params = @{
        tenantFilter               = $CustomerTenantID
        PolicyName                 = $PolicyName
        RuleName                   = $RuleName
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('PolicyName')) { $body['PolicyName'] = $PolicyName }
    if ($PSBoundParameters.ContainsKey('RuleName')) { $body['RuleName'] = $RuleName }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
