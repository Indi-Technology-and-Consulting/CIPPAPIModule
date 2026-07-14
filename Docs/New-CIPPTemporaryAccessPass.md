# New-CIPPTemporaryAccessPass
## SYNOPSIS
Creates a new Temporary Access Pass for a user in a Microsoft 365 tenant.
## DESCRIPTION
The New-CIPPTemporaryAccessPass function creates a Temporary Access Pass (TAP) for a specified user
in a given Microsoft 365 tenant. This provides temporary, time-limited access without requiring a
permanent password.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The tenant ID of the Microsoft 365 customer where the TAP will be created.

  ## **-UserID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the user for whom the TAP will be created.

 #### EXAMPLE 1
```powershell
PS > New-CIPPTemporaryAccessPass -CustomerTenantID "contoso.onmicrosoft.com" -UserID "user@contoso.onmicrosoft.com"
```
 #### EXAMPLE 2
```powershell
PS > New-CIPPTemporaryAccessPass -CustomerTenantID "1a2b3c4d-1234-1234-1234-1a2b3c4d5e6f" -UserID "1a2b3c4d-1234-1234-1234-1a2b3c4d5e6f"
```

