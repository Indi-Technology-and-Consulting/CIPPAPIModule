# Get-CIPPCopilotUsage
## SYNOPSIS
ListCopilotUsage.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListCopilotUsage.
# PARAMETERS

## **-Period**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Period value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Type**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Type value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPCopilotUsage -Period '<Period>' -CustomerTenantID '<CustomerTenantID>' -Type '<Type>'
```

