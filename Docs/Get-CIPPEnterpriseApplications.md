# Get-CIPPEnterpriseApplications
## SYNOPSIS
Retrieves enterprise applications (service principals) for a tenant.
## DESCRIPTION
Calls the CIPP ListGraphRequest API to return service principals for a specified tenant. Defaults match the Enterprise Applications UI (selects key fields, includes counts, returns up to 999 results).
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer tenant to query.

 #### EXAMPLE 1
```powershell
PS > Get-CIPPEnterpriseApplications -CustomerTenantID "contoso.onmicrosoft.com"
```

