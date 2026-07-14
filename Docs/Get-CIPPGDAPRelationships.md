# Get-CIPPGDAPRelationships
## SYNOPSIS
Lists GDAP delegated admin relationships with customer tenants, with optional filtering by relationship ID or OData f.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListGDAPRelationships.
# PARAMETERS

## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID value sent to the CIPP API.

  ## **-StandardsExcludeAllTenants**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The StandardsExcludeAllTenants value sent to the CIPP API.

  ## **-IgnoreMissingRoles**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IgnoreMissingRoles value sent to the CIPP API.

  ## **-RemapRoles**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The RemapRoles value sent to the CIPP API.

  ## **-GDAPRoles**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The GDAPRoles value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPGDAPRelationships -ID '<ID>' -StandardsExcludeAllTenants '<StandardsExcludeAllTenants>' -IgnoreMissingRoles '<IgnoreMissingRoles>' -RemapRoles '<RemapRoles>' -GDAPRoles '<GDAPRoles>'
```

