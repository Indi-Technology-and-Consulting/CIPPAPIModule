# Get-CIPPAPDevices
## SYNOPSIS
Lists Windows Autopilot device identities registered in a tenant.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAPDevices.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPAPDevices -CustomerTenantID '<CustomerTenantID>'
```

