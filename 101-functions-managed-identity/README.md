# Provision a function app on a consumption plan with managed identity enabled

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-functions-managed-identity/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)]("https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-functions-managed-identity%2Fazuredeploy.json")
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)]("https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-functions-managed-identity%2Fazuredeploy.json")
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)]("http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-functions-managed-identity%2Fazuredeploy.json")

This template creates a function application on a consumption plan on Windows. It also enables managed identity for the application and returns the principal id as output.

## Managed identities in Azure Functions

You can learn more about [managed identities](https://docs.microsoft.com/en-us/azure/app-service/overview-managed-identity) and common scenarios in the [documentation](https://docs.microsoft.com/en-us/azure/app-service/overview-managed-identity#obtaining-tokens-for-azure-resources).

Another common scenario is to grant the managed identity access to either resource groups or subscriptions so that the function has permissions to take action on Azure resources. This is useful when using functions to automate Azure operational tasks.

## Grant the managed identity contributor access to the subscription or resource group so it can perform actions

The below command sets the access at the subscription level.

```powershell
$Context = Get-AzContext
New-AzRoleAssignment -ObjectId <principalId> -RoleDefinitionName Contributor -Scope "/subscriptions/$($Context.Subscription)"
```

## Tasks performed by this template

This template performs the following tasks

* Creates a storage account to store the functions code.
* Creates an application insights resource to store logs and metrics for the function.
* Creates a functions application with managed identity enabled, and running on a consumption plan.

For more information about Azure Functions, see the [Azure Functions Overview](https://azure.microsoft.com/en-us/documentation/articles/functions-overview/).
