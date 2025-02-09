# Web App with diagnostics logging to Storage Account Blob Container

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/301-web-app-diagnostics-logs-blob-container/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F301-web-app-diagnostics-logs-blob-container%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F301-web-app-diagnostics-logs-blob-container%2Fazuredeploy.json)



This template deploys a Web App with diagnostics logging to Storage Account Blob Container.

This template uses the `listAccountSas` function to retrieve Storage Account SAS and then connect Storage Account (and its blob container) with Web App ([ARM function reference](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions-resource#listaccountsas-listkeys-listsecrets-and-list), [API endpoint reference](https://docs.microsoft.com/en-us/rest/api/storagerp/storageaccounts/listaccountsas)). By using `listAccountSas` whole solution can be deployed in a single step - there is no need for getting and providing Storage Account SAS explicitly by the user.

`Tags: App Service, Web Application, Storage Account, Diagnostics Logs, Blob Container`


