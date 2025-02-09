# Autoscale Setting for App Service Plan

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/monitor-autoscale-webappserviceplan-simplemetricbased/CredScanResult.svg)

The following template deploys an App Service Plan + Autoscale Setting for App Service plan based on a single metric.

If the metric is above the upper threshold, the example autoscale setting will scale out the instance count.  If the metric is below the lower threshold, the example autoscale setting will scale in the instance count.  This sample illustrates how easy it is to automate autoscale setting configuration for App Service plan via templates.

[![Deploy to Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fmonitor-autoscale-webappserviceplan-simplemetricbased%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fmonitor-autoscale-webappserviceplan-simplemetricbased%2Fazuredeploy.json)


