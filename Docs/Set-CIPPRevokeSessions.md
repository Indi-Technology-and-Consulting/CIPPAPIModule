# Revoke-CIPPUserSessions
## SYNOPSIS
Revokes all active sessions for a specified user.
## DESCRIPTION
The Revoke-CIPPUserSessions function terminates all active user sessions for a specified user in a given tenant.
This is useful for security incidents or when immediate account access revocation is needed.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The tenant ID of the customer where the user account is located.

  ## **-UserID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier (GUID) of the user whose sessions should be revoked.

  ## **-UserName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The username or display name of the user whose sessions should be revoked.

 #### EXAMPLE 1
```powershell
PS > Revoke-CIPPUserSessions -CustomerTenantID "contoso.onmicrosoft.com" -UserID "12345678-1234-1234-1234-123456789012" -UserName "john.doe@contoso.com"
```
 #### EXAMPLE 2
```powershell
PS > Set-CIPPRevokeSessions -CustomerTenantID "fabrikam.onmicrosoft.com" -UserID "87654321-4321-4321-4321-210987654321" -UserName "jane.smith@fabrikam.com"
```

