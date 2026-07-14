# Get-CIPPCustomVariableCatalog
## SYNOPSIS
Lists custom variables configured in CIPP for use in templates and automation.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListCustomVariables.
# PARAMETERS

## **-IncludeSystem**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IncludeSystem value sent to the CIPP API.

  ## **-ExcludeGlobalReserved**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The ExcludeGlobalReserved value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPCustomVariableCatalog -IncludeSystem '<IncludeSystem>' -ExcludeGlobalReserved '<ExcludeGlobalReserved>' -CustomerTenantID '<CustomerTenantID>'
```

