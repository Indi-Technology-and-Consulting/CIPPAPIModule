# Get-CIPPDBCache
## SYNOPSIS
Retrieves cached tenant data from the CIPP reporting database (CippReportingDB).
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListDBCache.
# PARAMETERS

## **-Type**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Type value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPDBCache -Type '<Type>' -CustomerTenantID '<CustomerTenantID>'
```

