# Get-CIPPCVEManagement
## SYNOPSIS
ListCVEManagement.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListCVEManagement.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-UseReportDB**
> ![Foo](https://img.shields.io/badge/Type-SwitchParameter-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
The UseReportDB value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPCVEManagement -CustomerTenantID '<CustomerTenantID>' -UseReportDB '<UseReportDB>'
```

