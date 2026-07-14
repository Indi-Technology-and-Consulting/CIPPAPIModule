# Get-CIPPCIPPUsers
## SYNOPSIS
Lists CIPP platform users and their role assignments from the allowedUsers table.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListCIPPUsers.
# PARAMETERS

## **-Roles**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Roles value sent to the CIPP API.

  ## **-UPN**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The UPN value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPCIPPUsers -Roles '<Roles>' -UPN '<UPN>'
```

