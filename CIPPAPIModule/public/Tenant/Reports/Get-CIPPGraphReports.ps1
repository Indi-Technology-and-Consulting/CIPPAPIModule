<#
.SYNOPSIS
    Retrieves Microsoft 365 usage reports (Graph or Office reports) for a tenant, such as email activity, OneDrive usage,.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGraphReports.

.PARAMETER Period
    The Period value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Report
    The Report value sent to the CIPP API.

.PARAMETER Type
    The Type value sent to the CIPP API.

.EXAMPLE
    Get-CIPPGraphReports -Period '<Period>' -CustomerTenantID '<CustomerTenantID>' -Report '<Report>' -Type '<Type>'
#>
function Get-CIPPGraphReports {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Period,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$Report,

        [Parameter(Mandatory = $false)]
        [string]$Type

    )

    Write-Verbose 'Retrieving ListGraphReports from the CIPP API'

    $endpoint = '/api/ListGraphReports'
    $params = @{
        period                     = $Period
        tenantFilter               = $CustomerTenantID
        report                     = $Report
        type                       = $Type
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
