<#
.SYNOPSIS
    Assigns an Intune policy to groups in a customer tenant.

.DESCRIPTION
    The Set-CIPPIntunePolicyAssignment function assigns an Intune policy via the CIPP API /api/ExecAssignPolicy endpoint. Policies can be assigned to broad targets (all users/devices), specific groups by ID or name, and groups can be excluded. Assignment mode controls whether the new assignment replaces or appends to existing assignments.

.PARAMETER CustomerTenantID
    The unique identifier of the customer tenant (domain or GUID).

.PARAMETER ID
    The unique identifier of the policy to assign.

.PARAMETER Type
    The policy type (e.g. 'deviceConfigurations', 'configurationPolicies', 'deviceCompliancePolicies').

.PARAMETER AssignTo
    The assignment target: 'allLicensedUsers', 'AllDevices' or 'AllDevicesAndUsers', or one or more group display names (comma-separated).

.PARAMETER PlatformType
    The Graph API root segment for the policy type: 'deviceManagement' (default server-side) or 'deviceAppManagement' (app protection/configuration policies).

.PARAMETER GroupIds
    Group object IDs to include in the assignment.

.PARAMETER GroupNames
    Group display names to include in the assignment.

.PARAMETER ExcludeGroup
    A single group display name to exclude from the assignment.

.PARAMETER ExcludeGroupIds
    Group object IDs to exclude from the assignment.

.PARAMETER ExcludeGroupNames
    Group display names to exclude from the assignment.

.PARAMETER AssignmentMode
    Whether the assignment replaces existing assignments or appends to them. Valid values are 'replace' and 'append'. Defaults to 'replace' server-side.

.PARAMETER AssignmentDirection
    Scopes a replace to one direction ('include' or 'exclude'), preserving assignments in the other direction. Sending 'exclude' with replace mode and no exclude groups clears all exclusions.

.PARAMETER AssignmentFilterName
    The name of an assignment filter to apply.

.PARAMETER AssignmentFilterType
    The assignment filter type: 'include' or 'exclude'. Defaults to 'include' server-side.

.EXAMPLE
    Set-CIPPIntunePolicyAssignment -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -Type 'deviceConfigurations' -AssignTo 'allLicensedUsers'

    This example assigns the specified device configuration policy to all licensed users.

.EXAMPLE
    Set-CIPPIntunePolicyAssignment -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -Type 'configurationPolicies' -GroupNames 'Sales Users' -AssignmentMode 'append'

    This example appends an assignment for the 'Sales Users' group without touching existing assignments.
#>
function Set-CIPPIntunePolicyAssignment {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$CustomerTenantID,

        [Parameter(Mandatory = $true)]
        [string]$ID,

        [Parameter(Mandatory = $true)]
        [string]$Type,

        [Parameter(Mandatory = $false)]
        [string]$AssignTo,

        [Parameter(Mandatory = $false)]
        [ValidateSet('deviceManagement', 'deviceAppManagement')]
        [string]$PlatformType,

        [Parameter(Mandatory = $false)]
        [string[]]$GroupIds,

        [Parameter(Mandatory = $false)]
        [string[]]$GroupNames,

        [Parameter(Mandatory = $false)]
        [string]$ExcludeGroup,

        [Parameter(Mandatory = $false)]
        [string[]]$ExcludeGroupIds,

        [Parameter(Mandatory = $false)]
        [string[]]$ExcludeGroupNames,

        [Parameter(Mandatory = $false)]
        [ValidateSet('replace', 'append')]
        [string]$AssignmentMode,

        [Parameter(Mandatory = $false)]
        [ValidateSet('include', 'exclude')]
        [string]$AssignmentDirection,

        [Parameter(Mandatory = $false)]
        [string]$AssignmentFilterName,

        [Parameter(Mandatory = $false)]
        [ValidateSet('include', 'exclude')]
        [string]$AssignmentFilterType
    )

    Write-Verbose "Assigning Intune policy $ID for customer: $CustomerTenantID"
    $Endpoint = '/api/ExecAssignPolicy'

    $body = @{
        tenantFilter         = $CustomerTenantID
        ID                   = $ID
        Type                 = $Type
        AssignTo             = $AssignTo
        platformType         = $PlatformType
        excludeGroup         = $ExcludeGroup
        GroupIds             = $GroupIds
        GroupNames           = $GroupNames
        ExcludeGroupIds      = $ExcludeGroupIds
        ExcludeGroupNames    = $ExcludeGroupNames
        assignmentMode       = $AssignmentMode
        assignmentDirection  = $AssignmentDirection
        AssignmentFilterName = $AssignmentFilterName
        AssignmentFilterType = $AssignmentFilterType
    }

    Invoke-CIPPRestMethod -Endpoint $Endpoint -Body $body -Method 'POST'
}
