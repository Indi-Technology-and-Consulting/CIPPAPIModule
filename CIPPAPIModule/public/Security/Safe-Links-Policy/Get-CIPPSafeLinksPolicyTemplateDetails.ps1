<#
.SYNOPSIS
    This function retrieves details for a specific Safe Links policy template.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSafeLinksPolicyTemplateDetails.

.PARAMETER ID
    The ID value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSafeLinksPolicyTemplateDetails -ID '<ID>'
#>
function Get-CIPPSafeLinksPolicyTemplateDetails {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ID

    )

    Write-Verbose 'Retrieving ListSafeLinksPolicyTemplateDetails from the CIPP API'

    $endpoint = '/api/ListSafeLinksPolicyTemplateDetails'
    $params = @{
        ID                         = $ID
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('ID')) { $body['ID'] = $ID }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
