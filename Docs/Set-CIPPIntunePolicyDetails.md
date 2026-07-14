# Set-CIPPIntunePolicyDetails
## SYNOPSIS
Updates an Intune policy's name and description.
## DESCRIPTION
Updates the name and/or description of an Intune policy in a customer tenant via the CIPP API /api/EditIntunePolicy endpoint. Supply Description as an empty string to clear the existing description.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The tenant to operate on (domain or GUID).

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the Intune policy.

  ## **-PolicyType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The Graph collection name for the Intune policy.

  ## **-NewDisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The new display name for the policy.

  ## **-Description**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The new description for the policy. Supply an empty string to clear the existing description.

  ## **-PlatformType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Graph platform segment for the policy. Defaults to deviceManagement server-side.

 #### EXAMPLE 1
```powershell
PS > Set-CIPPIntunePolicyDetails -CustomerTenantID 'contoso.onmicrosoft.com' -ID '12345678-1234-1234-1234-1234567890ab' -PolicyType 'deviceConfigurations' -NewDisplayName 'Updated baseline' -Description 'Updated configuration baseline'

Updates the name and description of the specified Intune policy.
```

