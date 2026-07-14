# Get-CIPPJITAdminTemplates
## SYNOPSIS
Lists Just-in-Time admin role templates that define temporary admin role assignments.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListJITAdminTemplates.
# PARAMETERS

## **-IncludeAllTenants**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IncludeAllTenants value sent to the CIPP API.

  ## **-GUID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The GUID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPJITAdminTemplates -IncludeAllTenants '<IncludeAllTenants>' -GUID '<GUID>' -CustomerTenantID '<CustomerTenantID>'
```

