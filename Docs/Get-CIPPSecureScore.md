# Get-CIPPSecureScore
## SYNOPSIS
Retrieves the Microsoft Secure Score for a specified customer tenant.
## DESCRIPTION
The Get-CIPPSecureScore function queries the Microsoft Secure Score for a customer tenant via
CIPP and returns the latest snapshot enriched the same way the CIPP portal does: it computes the
overall percentage and comparative percentages, and joins the per-control breakdown with the
control profile metadata (title, threats, compliance frameworks).
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer tenant for which the secure score is retrieved.

 #### EXAMPLE 1
```powershell
PS > Get-CIPPSecureScore -CustomerTenantID "contoso.onmicrosoft.com"
```

