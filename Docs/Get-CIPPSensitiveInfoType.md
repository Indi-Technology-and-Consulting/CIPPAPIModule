# Get-CIPPSensitiveInfoType
## SYNOPSIS
Lists sensitive information types (SITs) configured in the Security & Compliance Center, optionally including built-i.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSensitiveInfoType.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-IncludeBuiltIn**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The IncludeBuiltIn value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSensitiveInfoType -CustomerTenantID '<CustomerTenantID>' -IncludeBuiltIn '<IncludeBuiltIn>'
```

