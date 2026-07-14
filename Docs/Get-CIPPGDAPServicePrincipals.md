# Get-CIPPGDAPServicePrincipals
## SYNOPSIS
Lists service principals in a customer tenant owned by the partner or specified vendor tenant IDs, useful for identif.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListGDAPServicePrincipals.
# PARAMETERS

## **-VendorTenantIds**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The VendorTenantIds value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-OwnerType**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The OwnerType value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPGDAPServicePrincipals -VendorTenantIds '<VendorTenantIds>' -CustomerTenantID '<CustomerTenantID>' -OwnerType '<OwnerType>'
```

