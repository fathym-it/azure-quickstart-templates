# TFS - Single VM workgroup deployment

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/tfs-basic-workgroup/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Ftfs-basic-workgroup%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Ftfs-basic-workgroup%2Fazuredeploy.json)
 
 
This template creates a self-contained single VM TFS workgroup deployment, including TFS and SQL Express. It is meant to be used to evaluate TFS in Azure, not as a production deployment.

## After Deployment

The VM is created with a public IP. To access TFS you can RDP into the VM using that IP address and the username & password provided during the deployment. TFS will be available on port 8080 (e.g. http://vmName:8080/tfs)


