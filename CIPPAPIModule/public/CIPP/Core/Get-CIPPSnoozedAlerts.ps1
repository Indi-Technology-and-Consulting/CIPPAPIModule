<#
.SYNOPSIS
    Lists alerts that have been snoozed (temporarily suppressed), filterable by cmdlet name.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSnoozedAlerts.

.PARAMETER CmdletName
    The CmdletName value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSnoozedAlerts -CmdletName '<CmdletName>'
#>
function Get-CIPPSnoozedAlerts {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$CmdletName

    )

    Write-Verbose 'Retrieving ListSnoozedAlerts from the CIPP API'

    $endpoint = '/api/ListSnoozedAlerts'
    $params = @{
        CmdletName                 = $CmdletName
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
