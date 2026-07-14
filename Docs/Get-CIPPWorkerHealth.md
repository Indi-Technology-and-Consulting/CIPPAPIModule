# Get-CIPPWorkerHealth
## SYNOPSIS
Retrieves health status and diagnostics for CIPP background worker processes.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListWorkerHealth.
# PARAMETERS

## **-Priority**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Priority value sent to the CIPP API.

  ## **-Action**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Action value sent to the CIPP API.

  ## **-Minutes**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The Minutes value sent to the CIPP API.

  ## **-PoolType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The PoolType value sent to the CIPP API.

  ## **-Limit**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The Limit value sent to the CIPP API.

  ## **-JobID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The JobID value sent to the CIPP API.

  ## **-MaxPoints**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The MaxPoints value sent to the CIPP API.

  ## **-RunName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The RunName value sent to the CIPP API.

  ## **-Status**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Status value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPWorkerHealth -Priority '<Priority>' -Action '<Action>' -Minutes '<Minutes>' -PoolType '<PoolType>' -Limit '<Limit>' -JobID '<JobID>' -MaxPoints '<MaxPoints>' -RunName '<RunName>' -Status '<Status>'
```

