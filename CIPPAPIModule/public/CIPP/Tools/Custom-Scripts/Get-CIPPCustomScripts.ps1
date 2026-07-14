<#
.SYNOPSIS
    Lists custom PowerShell scripts stored in CIPP, with optional filtering by script GUID and version history.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCustomScripts.

.PARAMETER IncludeAllVersions
    The IncludeAllVersions value sent to the CIPP API.

.PARAMETER ScriptGUID
    The ScriptGUID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPCustomScripts -IncludeAllVersions '<IncludeAllVersions>' -ScriptGUID '<ScriptGUID>'
#>
function Get-CIPPCustomScripts {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [switch]$IncludeAllVersions,

        [Parameter(Mandatory = $false)]
        [string]$ScriptGUID

    )

    Write-Verbose 'Retrieving ListCustomScripts from the CIPP API'

    $endpoint = '/api/ListCustomScripts'
    $params = @{
        IncludeAllVersions         = $IncludeAllVersions.IsPresent
        ScriptGuid                 = $ScriptGUID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('IncludeAllVersions')) { $body['IncludeAllVersions'] = $IncludeAllVersions.IsPresent }
    if ($PSBoundParameters.ContainsKey('ScriptGUID')) { $body['ScriptGuid'] = $ScriptGUID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
