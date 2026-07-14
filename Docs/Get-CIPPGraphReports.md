# Get-CIPPGraphReports
## SYNOPSIS
Retrieves Microsoft 365 usage reports (Graph or Office reports) for a tenant, such as email activity, OneDrive usage,.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListGraphReports.
# PARAMETERS

## **-Period**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Period value sent to the CIPP API.

  ## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

  ## **-Report**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Report value sent to the CIPP API.

  ## **-Type**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The Type value sent to the CIPP API.

 #### EXAMPLE 1
```powershell
Get-CIPPGraphReports -Period '<Period>' -CustomerTenantID '<CustomerTenantID>' -Report '<Report>' -Type '<Type>'
```

