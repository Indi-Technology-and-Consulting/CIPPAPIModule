<#
.SYNOPSIS
    Lists saved DLP compliance policy templates for deploying standardized DLP configurations.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDlpCompliancePolicyTemplates.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPDlpCompliancePolicyTemplates -ID '<ID>'
#>
function Get-CIPPDlpCompliancePolicyTemplates {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListDlpCompliancePolicyTemplates from the CIPP API'

    $endpoint = '/api/ListDlpCompliancePolicyTemplates'
    $params = @{
        ID                         = $ID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
