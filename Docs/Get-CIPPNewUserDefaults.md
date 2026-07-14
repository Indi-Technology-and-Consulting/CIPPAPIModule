# Get-CIPPNewUserDefaults
## SYNOPSIS
Lists default templates for new user creation, including default domain, usage location, and license assignments.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListNewUserDefaults.
# PARAMETERS

## **-IncludeAllTenants**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IncludeAllTenants value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPNewUserDefaults -IncludeAllTenants '<IncludeAllTenants>' -CustomerTenantID '<CustomerTenantID>' -ID '<ID>'
```

