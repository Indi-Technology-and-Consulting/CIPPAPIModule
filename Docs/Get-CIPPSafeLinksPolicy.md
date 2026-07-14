# Get-CIPPSafeLinksPolicy
## SYNOPSIS
This function is used to list the Safe Links policies in the tenant, including unmatched rules and policies.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSafeLinksPolicy.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPSafeLinksPolicy -CustomerTenantID '<CustomerTenantID>'
```

