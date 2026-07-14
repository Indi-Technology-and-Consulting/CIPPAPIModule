# Get-CIPPMailboxStatistics
## SYNOPSIS
Retrieves mailbox usage statistics for a specified customer tenant over a given time period.
## DESCRIPTION
The Get-CIPPMailboxStatistics function queries mailbox usage details for a customer tenant using the Microsoft Graph API. 
It allows specifying the tenant ID and an optional time period (D7, D30, D90, D180) to filter the statistics.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The unique identifier of the customer tenant for which mailbox statistics are to be retrieved.

  ## **-TimePeriod**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-D7-Blue?color=5547a8)\
(Optional) The time period for mailbox usage statistics. Valid values are 'D7', 'D30', 'D90', 'D180'. Defaults to 'D7'.

 #### EXAMPLE 1
```powershell
PS > Get-CIPPMailboxStatistics -CustomerTenantID "contoso.onmicrosoft.com" -TimePeriod "D30"
```

