<#
.SYNOPSIS
    Lists retention compliance policies and their associated rules from the Security & Compliance Center.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListRetentionCompliancePolicy.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPRetentionCompliancePolicy -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPRetentionCompliancePolicy {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListRetentionCompliancePolicy from the CIPP API'

    $endpoint = '/api/ListRetentionCompliancePolicy'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
