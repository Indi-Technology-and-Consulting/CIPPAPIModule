# Get-CIPPDlpCompliancePolicy
## SYNOPSIS
Lists Data Loss Prevention (DLP) compliance policies and their associated rules from the Security & Compliance Center.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListDlpCompliancePolicy.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPDlpCompliancePolicy -CustomerTenantID '<CustomerTenantID>'
```

