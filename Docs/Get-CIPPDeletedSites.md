# Get-CIPPDeletedSites
## SYNOPSIS
ListDeletedSites.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListDeletedSites.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPDeletedSites -CustomerTenantID '<CustomerTenantID>'
```

