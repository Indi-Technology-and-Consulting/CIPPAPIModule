# Get-CIPPContainerLogs
## SYNOPSIS
Retrieves container logs for the CIPP backend process.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListContainerLogs.
# PARAMETERS

## **-File**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The File value sent to the CIPP API.

  ## **-Action**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Action value sent to the CIPP API.

  ## **-Tail**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The Tail value sent to the CIPP API.

  ## **-From**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The From value sent to the CIPP API.

  ## **-Query**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Query value sent to the CIPP API.

  ## **-Regex**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Regex value sent to the CIPP API.

  ## **-Search**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Search value sent to the CIPP API.

  ## **-Level**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Level value sent to the CIPP API.

  ## **-Exclude**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Exclude value sent to the CIPP API.

  ## **-SortDesc**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The SortDesc value sent to the CIPP API.

  ## **-To**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The To value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPContainerLogs -File '<File>' -Action '<Action>' -Tail '<Tail>' -From '<From>' -Query '<Query>' -Regex '<Regex>' -Search '<Search>' -Level '<Level>' -Exclude '<Exclude>' -SortDesc '<SortDesc>' -To '<To>'
```

