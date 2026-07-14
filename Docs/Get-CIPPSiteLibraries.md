# Get-CIPPSiteLibraries
## SYNOPSIS
ListSiteLibraries.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSiteLibraries.
# PARAMETERS

## **-SiteID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-SiteURL**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteURL value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSiteLibraries -SiteID '<SiteID>' -CustomerTenantID '<CustomerTenantID>' -SiteURL '<SiteURL>'
```

