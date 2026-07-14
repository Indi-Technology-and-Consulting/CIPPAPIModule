# Add-CIPPExchConnector
## SYNOPSIS
Adds an Exchange Connector for a specified tenant using a template.
## DESCRIPTION
The Add-CIPPExchConnector function adds an Exchange Connector for a specified tenant using either a template GUID or template name. 
If neither the TemplateGuid nor TemplateName is provided, an error is thrown. The function retrieves the template, converts it to JSON, 
and sends a POST request to the '/api/AddExConnector' endpoint with the necessary parameters.
# PARAMETERS

## **-CustomerTenantDefaultDomain**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-TRUE-Red?) \
The default domain of the customer tenant for which the Exchange Connector is being added. This parameter is mandatory.

  ## **-TemplateGuid**
> ![Foo](https://img.shields.io/badge/Type-Guid-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The GUID of the template to be used for adding the Exchange Connector. This parameter is optional.

  ## **-TemplateName**
> ![Foo](https://img.shields.io/badge/Type-String-Blue?) ![Foo](https://img.shields.io/badge/Mandatory-FALSE-Green?) \
The name of the template to be used for adding the Exchange Connector. This parameter is optional.

 #### EXAMPLE 1
```powershell
PS > Add-CIPPExchConnector -CustomerTenantDefaultDomain "example.com" -TemplateGuid "12345678-1234-1234-1234-123456789012"
```
 #### EXAMPLE 2
```powershell
PS > Add-CIPPExchConnector -CustomerTenantDefaultDomain "example.com" -TemplateName "DefaultTemplate"
```

