# New-CIPPAutopilotConfig
## SYNOPSIS
Creates a new Autopilot deployment profile configuration.
## DESCRIPTION
The New-CIPPAutopilotConfig function creates a new Autopilot deployment profile configuration for specified tenants.
It allows configuration of various deployment settings including user rights, deployment mode, and OOBE settings.
# PARAMETERS

## **-CustomerTenantID**
> ![Foo](https://img.shields.io/badge/Type-Array-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
Array of tenant IDs where the Autopilot configuration should be applied.

  ## **-DisplayName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The name of the Autopilot configuration profile.

  ## **-Description**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
A description for the Autopilot configuration profile.

  ## **-NotLocalAdmin**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
If set to true, users will be standard users. If false, users will be administrators.

  ## **-SharedDevice**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
If set to true, the device will be configured for shared use. If false, it will be configured for single user.

  ## **-AssignTo**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Optional. The assignment target for the profile.

  ## **-DeviceNameTemplate**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
Template for device naming pattern.

  ## **-AllowWhiteGlove**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable White Glove OOBE deployment.

  ## **-CollectHash**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable hardware hash collection.

  ## **-HideChangeAccount**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable the change account option in OOBE.

  ## **-HidePrivacy**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable privacy settings page in OOBE.

  ## **-HideTerms**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable terms of service page in OOBE.

  ## **-AutoKeyboard**
> ![Foo](https://img.shields.io/badge/Type-Boolean-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-False-Blue?color=5547a8)\
Enable or disable automatic keyboard selection.

  ## **-Language**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) ![Foo](https://img.shields.io/badge/DefaultValue-os-default-Blue?color=5547a8)\
Language code for the deployment.

 #### EXAMPLE 1
```powershell
PS > New-CIPPAutopilotConfig -CustomerTenantID "contoso.onmicrosoft.com" -DisplayName "Standard Deployment" -Description "Default configuration" -DeviceNameTemplate "CTO-%SERIAL%" -Language "en-US"
```
 #### EXAMPLE 2
```powershell
PS > $params = @{
Description = "Configuration for shared devices"
NotLocalAdmin = $true
SharedDevice = $true
DeviceNameTemplate = "SHARED-%SERIAL%"
HideChangeAccount = $true
Language = "en-US"
}
New-CIPPAutopilotConfig @params
```

