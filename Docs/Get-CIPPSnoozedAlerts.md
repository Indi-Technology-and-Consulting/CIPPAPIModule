# Get-CIPPSnoozedAlerts
## SYNOPSIS
Lists alerts that have been snoozed (temporarily suppressed), filterable by cmdlet name.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListSnoozedAlerts.
# PARAMETERS

## **-CmdletName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The CmdletName value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPSnoozedAlerts -CmdletName '<CmdletName>'
```

