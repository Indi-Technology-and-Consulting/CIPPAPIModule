# Get-CIPPAgent365PackageDetail
## SYNOPSIS
ListAgent365PackageDetail.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAgent365PackageDetail.
# PARAMETERS

## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPAgent365PackageDetail -ID '<ID>' -CustomerTenantID '<CustomerTenantID>'
```

