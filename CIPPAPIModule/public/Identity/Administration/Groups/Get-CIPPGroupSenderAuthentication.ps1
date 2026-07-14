<#
.SYNOPSIS
    Lists sender authentication settings for an Exchange distribution group or mail-enabled security group, controlling w.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListGroupSenderAuthentication.

.PARAMETER Groupid
    The Groupid value sent to the CIPP API.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER Type
    The Type value sent to the CIPP API.

.EXAMPLE
    Get-CIPPGroupSenderAuthentication -Groupid '<Groupid>' -CustomerTenantID '<CustomerTenantID>' -Type '<Type>'
#>
function Get-CIPPGroupSenderAuthentication {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$Groupid,

        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$Type

    )

    Write-Verbose 'Retrieving ListGroupSenderAuthentication from the CIPP API'

    $endpoint = '/api/ListGroupSenderAuthentication'
    $params = @{
        groupid                    = $Groupid
        tenantFilter               = $CustomerTenantID
        Type                       = $Type
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
