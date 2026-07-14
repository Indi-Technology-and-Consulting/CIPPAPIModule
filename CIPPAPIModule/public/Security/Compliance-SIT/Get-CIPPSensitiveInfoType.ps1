<#
.SYNOPSIS
    Lists sensitive information types (SITs) configured in the Security & Compliance Center, optionally including built-i.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListSensitiveInfoType.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER IncludeBuiltIn
    The IncludeBuiltIn value sent to the CIPP API.

.EXAMPLE
    Get-CIPPSensitiveInfoType -CustomerTenantID '<CustomerTenantID>' -IncludeBuiltIn '<IncludeBuiltIn>'
#>
function Get-CIPPSensitiveInfoType {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$IncludeBuiltIn

    )

    Write-Verbose 'Retrieving ListSensitiveInfoType from the CIPP API'

    $endpoint = '/api/ListSensitiveInfoType'
    $params = @{
        tenantFilter               = $CustomerTenantID
        IncludeBuiltIn             = $IncludeBuiltIn
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
