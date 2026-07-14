# Get-CIPPAuditLogCoverage
## SYNOPSIS
ListAuditLogCoverage.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAuditLogCoverage.
# PARAMETERS

## **-RelativeTime**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The RelativeTime value sent to the CIPP API.

  ## **-EndDate**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The EndDate value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-StartDate**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The StartDate value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPAuditLogCoverage -RelativeTime '<RelativeTime>' -EndDate '<EndDate>' -CustomerTenantID '<CustomerTenantID>' -StartDate '<StartDate>'
```

