# VPN Custom IPSec Policy

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-vpn-custom-ipsec-policy/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-vpn-custom-ipsec-policy%2Fazuredeploy.json)
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-vpn-custom-ipsec-policy%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2F101-vpn-custom-ipsec-policy%2Fazuredeploy.json)


This template deploys a Custom IPSec Policy to an existing VPN Gateway.  

## Description

A custom IPSec Policy allows more granular configuration of the IPSec Parameters.  
This allows you to deploy a site-to-site VPN Policy to support specific IPSec settings on your VPN Endpoint Device.  

This template requires that the Virtual Network Gateway and Local Network Gateway are already present


## Deployment steps

You can click the "deploy to Azure" button at the beginning of this document or follow the instructions for command line deployment using the scripts in the root of this repo.

`Tags: VPN, IPSec, Site-to-Site, IKE, PFS Group, Perfect Forward Secrecy, DH Group, Diffie-Hellman, Security Association`