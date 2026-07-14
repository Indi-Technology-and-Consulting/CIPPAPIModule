# Get-CIPPAppRegistrations
## SYNOPSIS
Retrieves app registrations for a tenant.
## DESCRIPTION
Calls the CIPP ListGraphRequest API to return application registrations for a specified tenant. Defaults mirror the App Registrations UI (includes counts and returns up to 999 results).
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer tenant to query.

 #### EXAMPLE 1
```powershell
PS > Get-CIPPAppRegistrations -CustomerTenantID "contoso.onmicrosoft.com"
```

