<#
.SYNOPSIS
    Retrieves container logs for the CIPP backend process.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListContainerLogs.

.PARAMETER File
    The File value sent to the CIPP API.

.PARAMETER Action
    The Action value sent to the CIPP API.

.PARAMETER Tail
    The Tail value sent to the CIPP API.

.PARAMETER From
    The From value sent to the CIPP API.

.PARAMETER Query
    The Query value sent to the CIPP API.

.PARAMETER Regex
    The Regex value sent to the CIPP API.

.PARAMETER Search
    The Search value sent to the CIPP API.

.PARAMETER Level
    The Level value sent to the CIPP API.

.PARAMETER Exclude
    The Exclude value sent to the CIPP API.

.PARAMETER SortDesc
    The SortDesc value sent to the CIPP API.

.PARAMETER To
    The To value sent to the CIPP API.

.EXAMPLE
    Get-CIPPContainerLogs -File '<File>' -Action '<Action>' -Tail '<Tail>' -From '<From>' -Query '<Query>' -Regex '<Regex>' -Search '<Search>' -Level '<Level>' -Exclude '<Exclude>' -SortDesc '<SortDesc>' -To '<To>'
#>
function Get-CIPPContainerLogs {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$File,

        [Parameter(Mandatory = $false)]
        [string]$Action,

        [Parameter(Mandatory = $false)]
        [int]$Tail,

        [Parameter(Mandatory = $false)]
        [string]$From,

        [Parameter(Mandatory = $false)]
        [string]$Query,

        [Parameter(Mandatory = $false)]
        [string]$Regex,

        [Parameter(Mandatory = $false)]
        [string]$Search,

        [Parameter(Mandatory = $false)]
        [string]$Level,

        [Parameter(Mandatory = $false)]
        [string]$Exclude,

        [Parameter(Mandatory = $false)]
        [switch]$SortDesc,

        [Parameter(Mandatory = $false)]
        [string]$To

    )

    Write-Verbose 'Retrieving ListContainerLogs from the CIPP API'

    $endpoint = '/api/ListContainerLogs'
    $params = @{
        File                       = $File
        Action                     = $Action
        Tail                       = $Tail
        From                       = $From
        Query                      = $Query
        Regex                      = $Regex
        Search                     = $Search
        Level                      = $Level
        Exclude                    = $Exclude
        SortDesc                   = $SortDesc.IsPresent
        To                         = $To
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('Query')) { $body['Query'] = $Query }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
