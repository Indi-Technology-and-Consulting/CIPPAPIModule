<#
.SYNOPSIS
    ListObjectHistory.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListObjectHistory.

.PARAMETER ObjectID
    The ObjectID value sent to the CIPP API.

.PARAMETER ObjectType
    The ObjectType value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Days
    The Days value sent to the CIPP API.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPObjectHistory -ObjectID '<ObjectID>' -ObjectType '<ObjectType>' -CustomerTenantID '<CustomerTenantID>' -Days '<Days>' -ID '<ID>'
#>
function Get-CIPPObjectHistory {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [guid]$ObjectID,

        [Parameter(Mandatory = $false)]
        [string]$ObjectType,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [int]$Days,

        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListObjectHistory from the CIPP API'

    $endpoint = '/api/ListObjectHistory'
    $params = @{
        objectId                   = $ObjectID
        objectType                 = $ObjectType
        tenantFilter               = $CustomerTenantID
        days                       = $Days
        id                         = $ID
    }

    $body = @{}
    $body['objectId'] = $ObjectID
    if ($PSBoundParameters.ContainsKey('ObjectType')) { $body['objectType'] = $ObjectType }
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('Days')) { $body['days'] = $Days }
    if ($PSBoundParameters.ContainsKey('ID')) { $body['id'] = $ID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
