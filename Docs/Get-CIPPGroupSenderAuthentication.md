# Get-CIPPGroupSenderAuthentication
## SYNOPSIS
Lists sender authentication settings for an Exchange distribution group or mail-enabled security group, controlling w.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListGroupSenderAuthentication.
# PARAMETERS

## **-Groupid**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Groupid value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Type**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Type value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPGroupSenderAuthentication -Groupid '<Groupid>' -CustomerTenantID '<CustomerTenantID>' -Type '<Type>'
```

