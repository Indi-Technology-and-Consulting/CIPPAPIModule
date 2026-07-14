# Get-CIPPDetectedAppDevices
## SYNOPSIS
Lists Intune-managed devices that have a specific detected application installed, identified by App ID.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListDetectedAppDevices.
# PARAMETERS

## **-AppID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The AppID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPDetectedAppDevices -AppID '<AppID>' -CustomerTenantID '<CustomerTenantID>'
```

