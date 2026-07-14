# Get-CIPPDetectedApps
## SYNOPSIS
Lists applications detected on Intune-managed devices in a tenant, optionally including device associations.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListDetectedApps.
# PARAMETERS

## **-DeviceID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The DeviceID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-IncludeDevices**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The IncludeDevices value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPDetectedApps -DeviceID '<DeviceID>' -CustomerTenantID '<CustomerTenantID>' -IncludeDevices '<IncludeDevices>'
```

