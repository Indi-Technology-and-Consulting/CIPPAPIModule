<#
.SYNOPSIS
    ListIntuneReusableSettingTemplates.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListIntuneReusableSettingTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPIntuneReusableSettingTemplates -ID '<ID>'
#>
function Get-CIPPIntuneReusableSettingTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListIntuneReusableSettingTemplates from the CIPP API'

    $endpoint = '/api/ListIntuneReusableSettingTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
