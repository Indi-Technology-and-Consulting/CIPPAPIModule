# Get-CIPPLicensesReport
## SYNOPSIS
Lists a detailed license overview across all tenants or a single tenant, including SKU breakdowns, costs, and availab.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListLicensesReport.
# PARAMETERS

## **-QueueID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The QueueID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPLicensesReport -QueueID '<QueueID>' -CustomerTenantID '<CustomerTenantID>'
```

