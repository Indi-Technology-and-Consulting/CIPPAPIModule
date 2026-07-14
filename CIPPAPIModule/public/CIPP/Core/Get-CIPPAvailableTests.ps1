<#
.SYNOPSIS
    ListAvailableTests.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAvailableTests.

.PARAMETER Name
    The Name value sent to the CIPP API.

.PARAMETER Description
    The Description value sent to the CIPP API.

.EXAMPLE
    Get-CIPPAvailableTests -Name '<Name>' -Description '<Description>'
#>
function Get-CIPPAvailableTests {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Name,

        [Parameter(Mandatory = $false)]
        [string]$Description

    )

    Write-Verbose 'Retrieving ListAvailableTests from the CIPP API'

    $endpoint = '/api/ListAvailableTests'
    $body = @{}
    if ($PSBoundParameters.ContainsKey('Name')) { $body['name'] = $Name }
    if ($PSBoundParameters.ContainsKey('Description')) { $body['description'] = $Description }

    Invoke-CIPPRestMethod -Endpoint $endpoint
}
