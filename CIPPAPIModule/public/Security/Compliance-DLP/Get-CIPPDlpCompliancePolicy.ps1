<#
.SYNOPSIS
    Lists Data Loss Prevention (DLP) compliance policies and their associated rules from the Security & Compliance Center.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListDlpCompliancePolicy.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPDlpCompliancePolicy -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPDlpCompliancePolicy {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListDlpCompliancePolicy from the CIPP API'

    $endpoint = '/api/ListDlpCompliancePolicy'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
