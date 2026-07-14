<#
.SYNOPSIS
    ListAppTemplates.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAppTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPAppTemplates -ID '<ID>'
#>
function Get-CIPPAppTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListAppTemplates from the CIPP API'

    $endpoint = '/api/ListAppTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
