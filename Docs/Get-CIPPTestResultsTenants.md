# Get-CIPPTestResultsTenants
## SYNOPSIS
ListTestResultsTenants.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListTestResultsTenants.
# PARAMETERS

## **-Category**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Category value sent to the CIPP API.

  ## **-TestType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The TestType value sent to the CIPP API.

  ## **-Status**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Status value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Risk**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Risk value sent to the CIPP API.

  ## **-TestID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The TestID value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPTestResultsTenants -Category '<Category>' -TestType '<TestType>' -Status '<Status>' -CustomerTenantID '<CustomerTenantID>' -Risk '<Risk>' -TestID '<TestID>'
```

