# Deploy IOMAD Cluster on Ubuntu

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/iomad-cluster-ubuntu/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fiomad-cluster-ubuntu%2Fazuredeploy.json)  
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fiomad-cluster-ubuntu%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fiomad-cluster-ubuntu%2Fazuredeploy.json)

This template deploys IOMAD as a LAMP application on Ubuntu in a clustered configuration. It creates a one or more Ubuntu VM for the front end and a single VM for the backend. It does a silent install of Apache and PHP on the front end VM's and MySQL on the backend VM. Then it deploys IOMAD on the cluster. It configures a load balancer for directing requests to the front end VM's. It also configures NAT rules to allow admin access to each of the VM's. It also sets up a moodledata data directory using file storage shared among the VM's. At the end, it runs the IOMAD installer on all the front end VM's to complete the installation. After the deployment is successful, you can go to /iomad to start using IOMAD.

# Notes

## Front End VM's:
This template can instantiate up to 5 front end VM's. This number can be increased easily by copying and pasting the related parts of the template. 

## Port Details:
The template opens HTTP port 80 for normal end user access on all the front end VM's. This port is then load-balanced using the load balancer.
It also opens ports 8080 to 8084 on the load balancer which are mapped to the port 8080 on each of the front end VM's respectively. These can be used for web admin access to individual front end VM's.
Similarly it opens ports 2200 to 2204 on the load balancer which are mapped to port 22 for SSH admin access on the respective VM's.

## Shared "moodledata" Directory:
In the clustered configuration, IOMAD requires a shared directory (/var/www/moodledata) to store files such as all your site's uploaded files, temporary data, cache, session data etc. The template creates a file share in Azure for this purpose and mounts it on each of the front end VM's and maps it to '/var/www/moodledata' for each VM.


