<#
.SYNOPSIS
    Lists trusted and blocked sender entries configured for a specific user's Exchange Online mailbox junk email settings.

.DESCRIPTION
    Retrieves data from the CIPP API endpoint /api/ListUserTrustedBlockedSenders.

.PARAMETER CustomerTenantID
    The customer tenant domain or GUID to query.

.PARAMETER UserID
    The UserID value sent to the CIPP API.

.PARAMETER UserPrincipalName
    The UserPrincipalName value sent to the CIPP API.

.EXAMPLE
    Get-CIPPUserTrustedBlockedSenders -CustomerTenantID '<CustomerTenantID>' -UserID '<UserID>' -UserPrincipalName '<UserPrincipalName>'
#>
function Get-CIPPUserTrustedBlockedSenders {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $false)]
        [string]$UserID,

        [Parameter(Mandatory = $false)]
        [string]$UserPrincipalName

    )

    Write-Verbose 'Retrieving ListUserTrustedBlockedSenders from the CIPP API'

    $endpoint = '/api/ListUserTrustedBlockedSenders'
    $params = @{
        tenantFilter               = $CustomerTenantID
        UserID                     = $UserID
        userPrincipalName          = $UserPrincipalName
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Params $params
}
