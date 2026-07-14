# Get-CIPPSensitivityLabel
## SYNOPSIS
Lists sensitivity labels and label policies configured in the Security & Compliance Center for a tenant.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSensitivityLabel.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPSensitivityLabel -CustomerTenantID '<CustomerTenantID>'
```

