[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fconsul-on-ubuntu%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fconsul-on-ubuntu%2Fazuredeploy.json)

  

# Consul on Ubuntu

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/consul-on-ubuntu/CredScanResult.svg)

This will create a 3 node [Consul](https://www.consul.io/) cluster in Azure and put them into an internal load balancer.

**NOTE** you will need to have an [Atlas](https://atlas.hashicorp.com/) account and token in order for auto-join to work.

The Atlas documentation on how to create a token is located [here](https://atlas.hashicorp.com/help/user-accounts/authentication)

This template is a bit odd as it gives each of the 3 nodes a public IP but then blocks all incoming traffic. Consul should probably be something 
you use internally (not publically accessible) but I didn't want to include spinning up a NAT box just for this. The hack is to give each box 
a public IP and then block off everything from the outside world accept for SSH. That is why the load balancer is internal as the idea is only internal 
resources will be using it.




