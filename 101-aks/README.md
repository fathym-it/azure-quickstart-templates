# Azure Container Service (AKS)

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-aks/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-aks%2Fazuredeploy.json)
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-aks%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-aks%2Fazuredeploy.json)

## Deployment

This template deploys an **AKS cluster**. To learn more about how to deploy the template, see the [quickstart](https://docs.microsoft.com/azure/aks/kubernetes-walkthrough-rm-template) article.

For information about how to deploy an AKS cluster using Azure CLI, see the [quickstart](https://docs.microsoft.com/azure/aks/kubernetes-walkthrough) article.

## Keys

To use keys stored in `keyVault`, replace `"value":""` with a reference to `keyVault` in the parameters file. For example:

```json
"servicePrincipalClientSecret": {
  "reference": {
    "keyVault": {
      "id": "<specify Resource ID of the Key Vault you are using>"
    },
    "secretName": "<specify name of the secret in the Key Vault to get the service principal password from>"
  }
}
```
