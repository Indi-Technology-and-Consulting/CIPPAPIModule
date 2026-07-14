# Get-CIPPCustomScripts
## SYNOPSIS
Lists custom PowerShell scripts stored in CIPP, with optional filtering by script GUID and version history.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListCustomScripts.
# PARAMETERS

## **-IncludeAllVersions**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IncludeAllVersions value sent to the CIPP API.

  ## **-ScriptGUID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ScriptGUID value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPCustomScripts -IncludeAllVersions '<IncludeAllVersions>' -ScriptGUID '<ScriptGUID>'
```

