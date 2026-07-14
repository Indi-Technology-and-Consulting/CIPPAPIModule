# Get-CIPPAvailableTests
## SYNOPSIS
ListAvailableTests.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAvailableTests.
# PARAMETERS

## **-Name**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Name value sent to the CIPP API.

  ## **-Description**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Description value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPAvailableTests -Name '<Name>' -Description '<Description>'
```

