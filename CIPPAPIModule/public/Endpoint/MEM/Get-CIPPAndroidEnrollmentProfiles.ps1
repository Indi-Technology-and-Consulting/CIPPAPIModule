<#
.SYNOPSIS
    Lists Android Enterprise enrollment profiles and hydrates token fields when Graph omits them from the list response.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAndroidEnrollmentProfiles.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.EXAMPLE
    Get-CIPPAndroidEnrollmentProfiles -CustomerTenantID '<CustomerTenantID>'
#>
function Get-CIPPAndroidEnrollmentProfiles {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID

    )

    Write-Verbose 'Retrieving ListAndroidEnrollmentProfiles from the CIPP API'

    $endpoint = '/api/ListAndroidEnrollmentProfiles'
    $params = @{
        tenantFilter               = $CustomerTenantID
    }

    $body = @{}
    $body['tenantFilter'] = $CustomerTenantID

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params -Body $body -Method POST
}
