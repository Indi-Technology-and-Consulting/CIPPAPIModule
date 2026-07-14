<#
.SYNOPSIS
    ListAuditLogCoverage.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListAuditLogCoverage.

.PARAMETER RelativeTime
    The RelativeTime value sent to the CIPP API.

.PARAMETER EndDate
    The EndDate value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER StartDate
    The StartDate value sent to the CIPP API.

.EXAMPLE
    Get-CIPPAuditLogCoverage -RelativeTime '<RelativeTime>' -EndDate '<EndDate>' -CustomerTenantID '<CustomerTenantID>' -StartDate '<StartDate>'
#>
function Get-CIPPAuditLogCoverage {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$RelativeTime,

        [Parameter(Mandatory = $false)]
        [string]$EndDate,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$StartDate

    )

    Write-Verbose 'Retrieving ListAuditLogCoverage from the CIPP API'

    $endpoint = '/api/ListAuditLogCoverage'
    $params = @{
        RelativeTime               = $RelativeTime
        EndDate                    = $EndDate
        tenantFilter               = $CustomerTenantID
        StartDate                  = $StartDate
    }

    $body = @{}
    if ($PSBoundParameters.ContainsKey('RelativeTime')) { $body['RelativeTime'] = $RelativeTime }
    if ($PSBoundParameters.ContainsKey('EndDate')) { $body['EndDate'] = $EndDate }
    $body['tenantFilter'] = $CustomerTenantID
    if ($PSBoundParameters.ContainsKey('StartDate')) { $body['StartDate'] = $StartDate }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
