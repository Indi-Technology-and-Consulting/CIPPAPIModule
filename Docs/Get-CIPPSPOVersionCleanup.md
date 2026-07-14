# Get-CIPPSPOVersionCleanup
## SYNOPSIS
ListSPOVersionCleanup.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSPOVersionCleanup.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-SiteURL**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteURL value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSPOVersionCleanup -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
```

