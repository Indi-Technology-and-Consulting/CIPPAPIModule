# Get-CIPPObjectHistory
## SYNOPSIS
ListObjectHistory.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListObjectHistory.
# PARAMETERS

## **-ObjectID**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ObjectID value sent to the CIPP API.

  ## **-ObjectType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ObjectType value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Days**
> ![Foo](https://img.shields.io/badge/Type-Int32-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-0-Blue?color=5547a8)\
The Days value sent to the CIPP API.

  ## **-ID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPObjectHistory -ObjectID '<ObjectID>' -ObjectType '<ObjectType>' -CustomerTenantID '<CustomerTenantID>' -Days '<Days>' -ID '<ID>'
```

