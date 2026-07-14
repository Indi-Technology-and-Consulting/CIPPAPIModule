<#
.SYNOPSIS
    Lists CIPP platform users and their role assignments from the allowedUsers table.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListCIPPUsers.

.PARAMETER Roles
    The Roles value sent to the CIPP API.

.PARAMETER UPN
    The UPN value sent to the CIPP API.

.EXAMPLE
    Get-CIPPCIPPUsers -Roles '<Roles>' -UPN '<UPN>'
#>
function Get-CIPPCIPPUsers {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Roles,

        [Parameter(Mandatory = $false)]
        [string]$UPN

    )

    Write-Verbose 'Retrieving ListCIPPUsers from the CIPP API'

    $endpoint = '/api/ListCIPPUsers'
    $body = @{}
    if ($PSBoundParameters.ContainsKey('Roles')) { $body['Roles'] = $Roles }
    if ($PSBoundParameters.ContainsKey('UPN')) { $body['UPN'] = $UPN }

    Invoke-CIPPRestMethod -Endpoint $endpoint
}
