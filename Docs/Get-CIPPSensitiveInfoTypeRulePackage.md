# Get-CIPPSensitiveInfoTypeRulePackage
## SYNOPSIS
ListSensitiveInfoTypeRulePackage.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSensitiveInfoTypeRulePackage.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-RulePackID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The RulePackID value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSensitiveInfoTypeRulePackage -CustomerTenantID '<CustomerTenantID>' -RulePackID '<RulePackID>'
```

