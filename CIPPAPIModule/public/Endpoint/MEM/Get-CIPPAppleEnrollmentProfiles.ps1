<#
.SYNOPSIS
    Lists Apple Automated Device Enrollment tokens and enrollment profiles.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAppleEnrollmentProfiles.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAppleEnrollmentProfiles -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAppleEnrollmentProfiles {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAppleEnrollmentProfiles from the CIPP API'

    $endpoint = '/api/ListAppleEnrollmentProfiles'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
