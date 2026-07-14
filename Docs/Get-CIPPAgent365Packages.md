# Get-CIPPAgent365Packages
## SYNOPSIS
ListAgent365Packages.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAgent365Packages.
# PARAMETERS

## **-Filter**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Filter value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPAgent365Packages -Filter '<Filter>' -CustomerTenantID '<CustomerTenantID>'
```

