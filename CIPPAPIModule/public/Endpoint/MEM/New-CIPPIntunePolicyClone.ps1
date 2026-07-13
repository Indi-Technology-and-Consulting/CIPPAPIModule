<#
.SYNOPSIS
    Clones an existing Intune policy under a new display name.

.DESCRIPTION
    The New-CIPPIntunePolicyClone function clones an existing Intune policy in a customer tenant via the CIPP API /api/AddIntunePolicyClone endpoint. The new display name must differ from the source policy's name, otherwise the source policy would be overwritten instead of cloned.

.PARAMETER CustomerTenantID
    The unique identifier of the customer tenant (domain or GUID).

.PARAMETER ID
    The unique identifier of the policy to clone.

.PARAMETER NewDisplayName
    The display name for the cloned policy. Must be different from the source policy's display name.

.PARAMETER URLName
    The Graph URL name identifying the policy type. Only the listed policy types are supported for cloning. Can be omitted when ODataType is provided.

.PARAMETER ODataType
    The OData type of the policy (e.g. '#microsoft.graph.androidManagedAppProtection'). Used to derive the policy type when URLName is omitted, and to pick the type-specific Graph endpoint for App Protection policies.

.PARAMETER NewDescription
    The description for the cloned policy. Defaults to the source policy's description when omitted.

.EXAMPLE
    New-CIPPIntunePolicyClone -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -URLName 'deviceConfigurations' -NewDisplayName 'Baseline config (copy)'

    This example clones the specified device configuration policy under the new display name.
#>
function New-CIPPIntunePolicyClone {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $true)]
        [string]$ID,

        [Parameter(Mandatory = $true)]
        [string]$NewDisplayName,

        [Parameter(Mandatory = $false)]
        [ValidateSet('deviceCompliancePolicies', 'managedAppPolicies', 'mobileAppConfigurations', 'configurationPolicies', 'windowsDriverUpdateProfiles', 'deviceConfigurations', 'groupPolicyConfigurations', 'windowsFeatureUpdateProfiles', 'windowsQualityUpdatePolicies', 'windowsQualityUpdateProfiles')]
        [string]$URLName,

        [Parameter(Mandatory = $false)]
        [string]$ODataType,

        [Parameter(Mandatory = $false)]
        [string]$NewDescription
    )

    Write-Verbose "Cloning Intune policy $ID to '$NewDisplayName' for customer: $CustomerTenantID"
    $Endpoint = '/api/AddIntunePolicyClone'

    $body = @{
        tenantFilter   = $CustomerTenantID
        ID             = $ID
        URLName        = $URLName
        ODataType      = $ODataType
        newDisplayName = $NewDisplayName
        newDescription = $NewDescription
    }

    Invoke-CIPPRestMethod -Endpoint $Endpoint -Body $body -Method 'POST'
}
