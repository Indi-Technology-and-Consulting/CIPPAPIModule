# New-CIPPIntunePolicyClone
## SYNOPSIS
Clones an existing Intune policy under a new display name.
## DESCRIPTION
The New-CIPPIntunePolicyClone function clones an existing Intune policy in a customer tenant via the CIPP API /api/AddIntunePolicyClone endpoint. The new display name must differ from the source policy's name, otherwise the source policy would be overwritten instead of cloned.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer tenant (domain or GUID).

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the policy to clone.

  ## **-NewDisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The display name for the cloned policy. Must be different from the source policy's display name.

  ## **-URLName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Graph URL name identifying the policy type. Only the listed policy types are supported for cloning. Can be omitted when ODataType is provided.

  ## **-ODataType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The OData type of the policy (e.g. '#microsoft.graph.androidManagedAppProtection'). Used to derive the policy type when URLName is omitted, and to pick the type-specific Graph endpoint for App Protection policies.

  ## **-NewDescription**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The description for the cloned policy. Defaults to the source policy's description when omitted.

 #### EXAMPLE 1
```powershell
PS > New-CIPPIntunePolicyClone -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -URLName 'deviceConfigurations' -NewDisplayName 'Baseline config (copy)'

This example clones the specified device configuration policy under the new display name.
```

