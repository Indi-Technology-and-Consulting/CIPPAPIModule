# Get-CIPPGeneratedReports
## SYNOPSIS
Lists generated reports from the CIPP Report Builder, filterable by tenant or report GUID.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListGeneratedReports.
# PARAMETERS

## **-ReportGUID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ReportGUID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPGeneratedReports -ReportGUID '<ReportGUID>' -CustomerTenantID '<CustomerTenantID>'
```

