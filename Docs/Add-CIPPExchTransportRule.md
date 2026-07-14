# Add-CIPPExchTransportRule
## SYNOPSIS
Adds an Exchange Transport Rule for a specified tenant using a template.
## DESCRIPTION
The Add-CIPPExchTransportRule function adds an Exchange Transport Rule for a specified tenant using a template. 
The template can be specified either by its GUID or by its name. If neither is provided, an error is thrown.
# PARAMETERS

## **-CustomerTenantDefaultDomain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The default domain of the customer tenant for which the transport rule is being added. This parameter is mandatory.

  ## **-TemplateGuid**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The GUID of the template to be used for creating the transport rule. This parameter is optional but either TemplateGuid or TemplateName must be provided.

  ## **-TemplateName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the template to be used for creating the transport rule. This parameter is optional but either TemplateGuid or TemplateName must be provided.

 #### EXAMPLE 1
```powershell
PS > Add-CIPPExchTransportRule -CustomerTenantDefaultDomain "example.com" -TemplateGuid "12345678-1234-1234-1234-123456789012"
```
 #### EXAMPLE 2
```powershell
PS > Add-CIPPExchTransportRule -CustomerTenantDefaultDomain "example.com" -TemplateName "DefaultTemplate"
```

