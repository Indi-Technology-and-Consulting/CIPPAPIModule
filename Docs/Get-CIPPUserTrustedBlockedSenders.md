# Get-CIPPUserTrustedBlockedSenders
## SYNOPSIS
Lists trusted and blocked sender entries configured for a specific user's Exchange Online mailbox junk email settings.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListUserTrustedBlockedSenders.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-UserID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The UserID value sent to the CIPP API.

  ## **-UserPrincipalName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The UserPrincipalName value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPUserTrustedBlockedSenders -CustomerTenantID '<CustomerTenantID>' -UserID '<UserID>' -UserPrincipalName '<UserPrincipalName>'
```

