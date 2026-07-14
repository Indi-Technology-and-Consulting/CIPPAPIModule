# Get-CIPPSiteMembers
## SYNOPSIS
Lists members of a specific SharePoint site by site ID, including user display names and email addresses.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSiteMembers.
# PARAMETERS

## **-SiteID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Filter**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Filter value sent to the CIPP API.

  ## **-SiteURL**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The SiteURL value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSiteMembers -SiteID '<SiteID>' -CustomerTenantID '<CustomerTenantID>' -Filter '<Filter>' -SiteURL '<SiteURL>'
```

