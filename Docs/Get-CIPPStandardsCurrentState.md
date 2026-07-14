# Get-CIPPStandardsCurrentState
## SYNOPSIS
Lists the current remediation state of standards applied to a specific tenant, including last check results.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListStandardsCurrentState.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPStandardsCurrentState -CustomerTenantID '<CustomerTenantID>'
```

