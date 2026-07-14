# Get-CIPPSafeLinksPolicyDetails
## SYNOPSIS
This function retrieves details for a specific Safe Links policy and rule.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSafeLinksPolicyDetails.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-PolicyName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The PolicyName value sent to the CIPP API.

  ## **-RuleName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The RuleName value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSafeLinksPolicyDetails -CustomerTenantID '<CustomerTenantID>' -PolicyName '<PolicyName>' -RuleName '<RuleName>'
```

