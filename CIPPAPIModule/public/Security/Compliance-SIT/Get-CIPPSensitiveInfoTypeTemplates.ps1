<#
.SYNOPSIS
    Lists saved sensitive information type templates for deploying custom SIT configurations.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSensitiveInfoTypeTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSensitiveInfoTypeTemplates -ID '<ID>'
#>
function Get-CIPPSensitiveInfoTypeTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListSensitiveInfoTypeTemplates from the CIPP API'

    $endpoint = '/api/ListSensitiveInfoTypeTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
