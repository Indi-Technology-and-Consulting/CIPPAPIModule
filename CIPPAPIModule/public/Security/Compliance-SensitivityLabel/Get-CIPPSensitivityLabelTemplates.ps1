<#
.SYNOPSIS
    Lists saved sensitivity label templates for deploying standardized label configurations.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSensitivityLabelTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSensitivityLabelTemplates -ID '<ID>'
#>
function Get-CIPPSensitivityLabelTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListSensitivityLabelTemplates from the CIPP API'

    $endpoint = '/api/ListSensitivityLabelTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
