# Set-CIPPIntunePolicyAssignment
## SYNOPSIS
Assigns an Intune policy to groups in a customer tenant.
## DESCRIPTION
The Set-CIPPIntunePolicyAssignment function assigns an Intune policy via the CIPP API /api/ExecAssignPolicy endpoint. Policies can be assigned to broad targets (all users/devices), specific groups by ID or name, and groups can be excluded. Assignment mode controls whether the new assignment replaces or appends to existing assignments.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer tenant (domain or GUID).

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the policy to assign.

  ## **-Type**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The policy type (e.g. 'deviceConfigurations', 'configurationPolicies', 'deviceCompliancePolicies').

  ## **-AssignTo**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The assignment target: 'allLicensedUsers', 'AllDevices' or 'AllDevicesAndUsers', or one or more group display names (comma-separated).

  ## **-PlatformType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Graph API root segment for the policy type: 'deviceManagement' (default server-side) or 'deviceAppManagement' (app protection/configuration policies).

  ## **-GroupIds**
> ![Foo](https://img.shields.io/badge/Type-String[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Group object IDs to include in the assignment.

  ## **-GroupNames**
> ![Foo](https://img.shields.io/badge/Type-String[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Group display names to include in the assignment.

  ## **-ExcludeGroup**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
A single group display name to exclude from the assignment.

  ## **-ExcludeGroupIds**
> ![Foo](https://img.shields.io/badge/Type-String[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Group object IDs to exclude from the assignment.

  ## **-ExcludeGroupNames**
> ![Foo](https://img.shields.io/badge/Type-String[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Group display names to exclude from the assignment.

  ## **-AssignmentMode**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Whether the assignment replaces existing assignments or appends to them. Valid values are 'replace' and 'append'. Defaults to 'replace' server-side.

  ## **-AssignmentDirection**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Scopes a replace to one direction ('include' or 'exclude'), preserving assignments in the other direction. Sending 'exclude' with replace mode and no exclude groups clears all exclusions.

  ## **-AssignmentFilterName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of an assignment filter to apply.

  ## **-AssignmentFilterType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The assignment filter type: 'include' or 'exclude'. Defaults to 'include' server-side.

 #### EXAMPLE 1
```powershell
PS > Set-CIPPIntunePolicyAssignment -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -Type 'deviceConfigurations' -AssignTo 'allLicensedUsers'

This example assigns the specified device configuration policy to all licensed users.
```
 #### EXAMPLE 2
```powershell
PS > Set-CIPPIntunePolicyAssignment -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -Type 'configurationPolicies' -GroupNames 'Sales Users' -AssignmentMode 'append'

This example appends an assignment for the 'Sales Users' group without touching existing assignments.
```

