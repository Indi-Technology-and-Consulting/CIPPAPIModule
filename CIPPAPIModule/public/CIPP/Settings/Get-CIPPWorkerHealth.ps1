<#
.SYNOPSIS
    Retrieves health status and diagnostics for CIPP background worker processes.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListWorkerHealth.

.PARAMETER Priority
    The Priority value sent to the CIPP API.

.PARAMETER Action
    The Action value sent to the CIPP API.

.PARAMETER Minutes
    The Minutes value sent to the CIPP API.

.PARAMETER PoolType
    The PoolType value sent to the CIPP API.

.PARAMETER Limit
    The Limit value sent to the CIPP API.

.PARAMETER JobID
    The JobID value sent to the CIPP API.

.PARAMETER MaxPoints
    The MaxPoints value sent to the CIPP API.

.PARAMETER RunName
    The RunName value sent to the CIPP API.

.PARAMETER Status
    The Status value sent to the CIPP API.

.EXAMPLE
    Get-CIPPWorkerHealth -Priority '<Priority>' -Action '<Action>' -Minutes '<Minutes>' -PoolType '<PoolType>' -Limit '<Limit>' -JobID '<JobID>' -MaxPoints '<MaxPoints>' -RunName '<RunName>' -Status '<Status>'
#>
function Get-CIPPWorkerHealth {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Priority,

        [Parameter(Mandatory = $false)]
        [string]$Action,

        [Parameter(Mandatory = $false)]
        [int]$Minutes,

        [Parameter(Mandatory = $false)]
        [string]$PoolType,

        [Parameter(Mandatory = $false)]
        [int]$Limit,

        [Parameter(Mandatory = $false)]
        [string]$JobID,

        [Parameter(Mandatory = $false)]
        [int]$MaxPoints,

        [Parameter(Mandatory = $false)]
        [string]$RunName,

        [Parameter(Mandatory = $false)]
        [string]$Status

    )

    Write-Verbose 'Retrieving ListWorkerHealth from the CIPP API'

    $endpoint = '/api/ListWorkerHealth'
    $params = @{
        Priority                   = $Priority
        Action                     = $Action
        Minutes                    = $Minutes
        PoolType                   = $PoolType
        Limit                      = $Limit
        JobId                      = $JobID
        MaxPoints                  = $MaxPoints
        RunName                    = $RunName
        Status                     = $Status
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('Priority')) { $body['Priority'] = $Priority }
    if ($PSBoundParameters.ContainsKey('JobID')) { $body['JobId'] = $JobID }
    if ($PSBoundParameters.ContainsKey('RunName')) { $body['RunName'] = $RunName }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
