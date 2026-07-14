# Get-CIPPActiveSyncDevices
## SYNOPSIS
Lists all ActiveSync mobile devices registered across Exchange Online mailboxes in a tenant.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListActiveSyncDevices.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPActiveSyncDevices -CustomerTenantID '<CustomerTenantID>'
```

