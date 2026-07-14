# Get-CIPPTests
## SYNOPSIS
Lists tests for a tenant, optionally filtered by report ID.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListTests.
# PARAMETERS

## **-ReportID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ReportID value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPTests -ReportID '<ReportID>' -CustomerTenantID '<CustomerTenantID>'
```

