# Intel Lustre 2.7 clients on CentOS 6.6 or 7.0 gallery image

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/intel-lustre-clients-on-centos/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fintel-lustre-clients-on-centos%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fintel-lustre-clients-on-centos%2Fazuredeploy.json)

This template creates Lustre client and server node VMs and related infrastructure such as VNETs. Provided below are the relevant details of the deployment.

* 3 or more Luster servers which consists of MGS (management server), MDS (metadata server) and 1 or more OSS (object storage server).
* OSS Servers are added in an availability set for HA
* It also creates a file system along with the Luster servers. 
* Creates 2 or more Intel Lustre 2.7 client virtual machines using Azure gallery CentOS 6.6 or 7.0 image and mounts an existing Intel Lustre file-system
* These Lustre client nodes are added in an availability set for HA
* Public IP will be attached to the client0 node. That node can be accessed via SSH [dnsNamePrefix].[region].cloudapp.azure.com.


