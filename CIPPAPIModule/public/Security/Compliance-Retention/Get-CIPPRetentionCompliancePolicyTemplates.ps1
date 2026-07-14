<#
.SYNOPSIS
    Lists saved retention compliance policy templates for deploying standardized retention configurations.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListRetentionCompliancePolicyTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPRetentionCompliancePolicyTemplates -ID '<ID>'
#>
function Get-CIPPRetentionCompliancePolicyTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListRetentionCompliancePolicyTemplates from the CIPP API'

    $endpoint = '/api/ListRetentionCompliancePolicyTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
