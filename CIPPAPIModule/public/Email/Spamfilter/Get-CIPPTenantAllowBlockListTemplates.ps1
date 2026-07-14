<#
.SYNOPSIS
    Lists saved Tenant Allow/Block List templates for Exchange Online Protection.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListTenantAllowBlockListTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPTenantAllowBlockListTemplates -ID '<ID>'
#>
function Get-CIPPTenantAllowBlockListTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListTenantAllowBlockListTemplates from the CIPP API'

    $endpoint = '/api/ListTenantAllowBlockListTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
