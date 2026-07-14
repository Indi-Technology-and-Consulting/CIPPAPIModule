<#
.SYNOPSIS
    Updates an Intune policy's name and description.

.DESCRIPTION
    Updates the name and/or description of an Intune policy in a customer tenant via the CIPP API /api/EditIntunePolicy endpoint. Supply Description as an empty string to clear the existing description.

.PARAMETER CustomerTenantID
    The tenant to operate on (domain or GUID).

.PARAMETER ID
    The unique identifier of the Intune policy.

.PARAMETER PolicyType
    The Graph collection name for the Intune policy.

.PARAMETER NewDisplayName
    The new display name for the policy.

.PARAMETER Description
    The new description for the policy. Supply an empty string to clear the existing description.

.PARAMETER PlatformType
    The Graph platform segment for the policy. Defaults to deviceManagement server-side.

.EXAMPLE
    Set-CIPPIntunePolicyDetails -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -PolicyType 'deviceConfigurations' -NewDisplayName 'Updated baseline' -Description 'Updated configuration baseline'

    Updates the name and description of the specified Intune policy.
#>
function Set-CIPPIntunePolicyDetails {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $true)]
        [string]$ID,

        [Parameter(Mandatory = $true)]
        [ValidateSet('deviceConfigurations', 'windowsDriverUpdateProfiles', 'windowsFeatureUpdateProfiles', 'windowsQualityUpdatePolicies', 'windowsQualityUpdateProfiles', 'groupPolicyConfigurations', 'mobileAppConfigurations', 'configurationPolicies', 'deviceCompliancePolicies', 'intents', 'androidManagedAppProtection', 'iosManagedAppProtection', 'windowsManagedAppProtection', 'mdmWindowsInformationProtectionPolicy', 'windowsInformationProtectionPolicy', 'targetedManagedAppConfiguration')]
        [string]$PolicyType,

        [Parameter(Mandatory = $false)]
        [string]$NewDisplayName,

        [Parameter(Mandatory = $false)]
        [string]$Description,

        [Parameter(Mandatory = $false)]
        [ValidateSet('deviceManagement', 'deviceAppManagement')]
        [string]$PlatformType
    )

    Write-Verbose "Updating the name and description of Intune policy $ID for customer: $CustomerTenantID"

    if (-not $PSBoundParameters.ContainsKey('NewDisplayName') -and -not $PSBoundParameters.ContainsKey('Description')) {
        throw 'Provide NewDisplayName, Description, or both.'
    }

    $endpoint = '/api/EditIntunePolicy'
    $body = @{
        tenantFilter = $CustomerTenantID
        ID           = $ID
        policyType   = $PolicyType
    }

    if ($PSBoundParameters.ContainsKey('NewDisplayName')) {
        $body.newDisplayName = $NewDisplayName
    }

    if ($PSBoundParameters.ContainsKey('Description')) {
        $body.description = $Description
    }

    if ($PSBoundParameters.ContainsKey('PlatformType')) {
        $body.platformType = $PlatformType
    }

    Invoke-CIPPRestMethod -Endpoint $endpoint -Body $body -Method POST
}
