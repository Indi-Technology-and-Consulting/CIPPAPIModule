# Get-CIPPUsersAndGroups
## SYNOPSIS
Lists both users and groups for a tenant in a single batch call, returning ID and display name for selection/lookup p.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListUsersAndGroups.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPUsersAndGroups -CustomerTenantID '<CustomerTenantID>'
```

