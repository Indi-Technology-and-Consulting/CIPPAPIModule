<#
.SYNOPSIS
    ListTestResultsTenants.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListTestResultsTenants.

.PARAMETER Category
    The Category value sent to the CIPP API.

.PARAMETER TestType
    The TestType value sent to the CIPP API.

.PARAMETER Status
    The Status value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Risk
    The Risk value sent to the CIPP API.

.PARAMETER TestID
    The TestID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPTestResultsTenants -Category '<Category>' -TestType '<TestType>' -Status '<Status>' -CustomerTenantID '<CustomerTenantID>' -Risk '<Risk>' -TestID '<TestID>'
#>
function Get-CIPPTestResultsTenants {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Category,

        [Parameter(Mandatory = $false)]
        [string]$TestType,

        [Parameter(Mandatory = $false)]
        [string]$Status,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$Risk,

        [Parameter(Mandatory = $false)]
        [string]$TestID

    )

    Write-Verbose 'Retrieving ListTestResultsTenants from the CIPP API'

    $endpoint = '/api/ListTestResultsTenants'
    $params = @{
        category                   = $Category
        testType                   = $TestType
        status                     = $Status
        tenantFilter               = $CustomerTenantID
        risk                       = $Risk
        testId                     = $TestID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('Category')) { $body['category'] = $Category }
    if ($PSBoundParameters.ContainsKey('TestType')) { $body['testType'] = $TestType }
    if ($PSBoundParameters.ContainsKey('Status')) { $body['status'] = $Status }
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('Risk')) { $body['risk'] = $Risk }
    if ($PSBoundParameters.ContainsKey('TestID')) { $body['testId'] = $TestID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
