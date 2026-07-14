# Get-CIPPAndroidEnrollmentProfiles
## SYNOPSIS
Lists Android Enterprise enrollment profiles and hydrates token fields when Graph omits them from the list response.
## DESCRIPTION
Retrieves data from the CIPP API endpoint /api/ListAndroidEnrollmentProfiles.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The customer tenant domain or GUID to query.

 #### EXAMPLE 1
```powershell
Get-CIPPAndroidEnrollmentProfiles -CustomerTenantID '<CustomerTenantID>'
```

