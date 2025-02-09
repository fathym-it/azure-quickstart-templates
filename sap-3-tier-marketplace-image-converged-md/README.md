# SAP NetWeaver 3-tier compatible converged template using a Marketplace image

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/sap-3-tier-marketplace-image-converged-md/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fsap-3-tier-marketplace-image-converged-md%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fsap-3-tier-marketplace-image-converged-md%2Fazuredeploy.json)

This template takes a minimum amount of parameters and deploys a VM that is customized for use with SAP NetWeaver, using the latest patched version of the selected operating system. This is a template for a 3-tier configuration. It deploys 1 (no HA) or 2 (HA) DB/ASCS/SCS servers and serveral virtual machines that can host dialog instances. In case of a HA deployment, the DB/ASCS/SCS and DI servers are placed in Availability Sets and a Load Balancer is added to the DB/ASCS/SCS server to allow HA configurations in the operating system (e.g. Windows Failover Cluster). This template uses Managed Disks.

## ASCS/SCS Internal Load Balancer ports

* Windows specific ports 445, 5985
* Linux specific ports 2049 (TCP and UPD)
* ASCS Ports (instance number 00): 3200, 3600, 3900,  8100, 50013, 50014, 50016
* SCS Ports (instance number 01): 3201, 3301, 3901, 8101, 50113, 50114, 50116
* ASCS ERS ports on Linux (instance number 02): 3302, 50213, 50214, 50216
* SCS ERS ports on Linux (instance number 03): 3303, 50313, 50314, 50316

ASCS/SCS Internal Load Balancer probe port: **62000**

ERS Internal Load Balancer probe port: **62102**

## DB Internal Load Balancer ports

* DB Internal Load Balancer ports: **1433**

DB Internal Load Balancer probe port: **62504**

<table>
	<tr>
		<th>Size</th>
		<th>HA</th>
		<th>Non-HA</th>
	</tr>
	<tr>
		<td>Demo</td>
		<td>2xDS12_v2 DB/ASCS/SCS (CL) Server (1xP10) + 2xDS2_v2 DI</td>
		<td>1xDS12_v2 DB/ASCS/SCS (CL) Server (1xP10) + 1xDS2_v2 DI</td>
	</tr>
	<tr>
		<td>Small < 30.000 SAPS</td>
		<td>2xDS13_v2 DB/ASCS/SCS (CL) Server (4xP20 1xP20) + 2xDS13_v2 DI</td>
		<td>1xDS13_v2 DB/ASCS/SCS (CL) Server (4xP20 1xP20) + 1xDS13_v2 DI</td>
	</tr>
	<tr>
		<td>Medium < 70.000 SAPS</td>
		<td>2xDS14_v2 DB/ASCS/SCS (CL) Server (6xP20 1xP20) + 4xDS13_v2 DI</td>
		<td>1xDS14_v2 DB/ASCS/SCS (CL) Server (6xP20 1xP20) + 4xDS13_v2 DI</td>
	</tr>
	<tr>
		<td>Large < 180.000 SAPS</td>
		<td>2xGS4 DB/ASCS/SCS (CL) Server (5xP30 1xP20) + 6xDS14_v2 DI</td>
		<td>1xGS4 DB/ASCS/SCS (CL) Server (5xP30 1xP20) + 6xDS14_v2 DI</td>
	</tr>
	<tr>
		<td>X-Large < 250.000 SAPS</td>
		<td>2xGS5 DB/ASCS/SCS (CL) Server (6xP30 1xP30) + 10xDS14_v2 DI</td>
		<td>1xGS5 DB/ASCS/SCS (CL) Server (6xP30 1xP30) + 10xDS14_v2 DI</td>
	</tr>
</table>				


