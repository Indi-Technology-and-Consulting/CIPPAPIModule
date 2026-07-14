# Get-CIPPSiteProperties
## SYNOPSIS
ListSiteProperties.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSiteProperties.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-SiteURL**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteURL value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSiteProperties -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
```

