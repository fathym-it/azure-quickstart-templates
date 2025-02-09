# Deploy Open edX FullStack (Ficus) on Ubuntu

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/openedx-fullstack-ubuntu/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fopenedx-fullstack-ubuntu%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fopenedx-fullstack-ubuntu%2Fazuredeploy.json)

This template deploys the Open edX full stack (Ficus) on Ubuntu. A default server-vars.yml is saved to */edx/app/edx_ansible*.

Connect to the virtual machine with SSH: `ssh {adminUsername}@{dnsNameForPublicIP}.{region}.cloudapp.azure.com`. Installation log can be found under */var/log/azure*.

You can learn more about Open edX and fullstack here:
- [Open edX](https://open.edx.org)
- [Running FullStack](https://openedx.atlassian.net/wiki/display/OpenOPS/Running+Fullstack)
- [Source Code](https://github.com/edx/edx-platform)

*Note that this template uses a different license than the [Open edX](https://github.com/edx/edx-platform/blob/master/LICENSE) platform.*


