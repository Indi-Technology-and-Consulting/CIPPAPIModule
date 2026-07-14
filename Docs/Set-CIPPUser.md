# Set-CIPPUser
## SYNOPSIS
Sets the properties of a CIPP user.
## DESCRIPTION
The Set-CIPPUser function is used to set the properties of a CIPP user. It allows you to modify various user attributes such as display name, username, first name, last name, domain, aliases, usage location, department, city, country, job title, mobile phone, street address, postal code, company name, and more. You can also add or remove the user from groups.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the customer tenant to which the user belongs. This parameter is mandatory.

  ## **-UserID**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The ID of the user to be modified. This parameter is mandatory.

  ## **-DisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The display name of the user.

  ## **-UserName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The username of the user.

  ## **-FirstName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The first name of the user.

  ## **-LastName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The last name of the user.

  ## **-Domain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The domain of the user.

  ## **-AddedAliases**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Additional aliases for the user.

  ## **-CopyFrom**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The ID of another user from which to copy the properties.

  ## **-UsageLocation**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The usage location of the user.

  ## **-Department**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The department of the user.

  ## **-City**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The city of the user.

  ## **-Country**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The country of the user.

  ## **-Jobtitle**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The job title of the user.

  ## **-MobilePhone**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The mobile phone number of the user.

  ## **-StreetAddress**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The street address of the user.

  ## **-PostalCode**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The postal code of the user.

  ## **-CompanyName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The company name of the user.

  ## **-MustChangePass**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Specifies whether the user must change their password. Default value is $false.

  ## **-AddToGroups**
> ![Foo](https://img.shields.io/badge/Type-Guid[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-@()-Blue?color=5547a8)\
An array of group IDs to which the user should be added.

  ## **-RemoveFromGroups**
> ![Foo](https://img.shields.io/badge/Type-Guid[]-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-@()-Blue?color=5547a8)\
An array of group IDs from which the user should be removed.

  ## **-BusinessPhone**
> ![Foo](https://img.shields.io/badge/Type-Array-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-@()-Blue?color=5547a8)\
An array of business phone numbers for the user.

 #### EXAMPLE 1
```powershell
PS > Set-CIPPUser -CustomerTenantID "7ced1621-b8f7-4231-868c-bc6b1a2f1778" -UserID "user1" -DisplayName "John Doe" -UserName "johndoe" -FirstName "John" -LastName "Doe" -Domain "example.com" -UsageLocation "US" -Department "IT" -City "New York" -Country "USA" -Jobtitle "Developer" -MobilePhone "1234567890" -StreetAddress "123 Main St" -PostalCode "12345" -CompanyName "Example Inc" -MustChangePass $true -AddToGroups "group1", "group2" -RemoveFromGroups "group3" -BusinessPhone "9876543210"
```

