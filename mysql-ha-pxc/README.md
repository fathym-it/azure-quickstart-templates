# Deploys a 3 node Percona XtraDB Cluster

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/mysql-ha-pxc/CredScanResult.svg)

[![Deploy to Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fmysql-ha-pxc%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fmysql-ha-pxc%2Fazuredeploy.json)  

This template lets you create a 3 node Percona XtraDB Cluster 5.6 on Azure.  It's tested on Ubuntu 12.04 LTS and CentOS 6.5.  

To verify the cluster, type in "mysql -h your_public_ip_dns_name -u test -p".  The password is what you set for sstuser in my.cnf. Run MySQL command "show status like 'wsrep%'".  You should see that wsrep_cluster_size is 3 by default and wsrep_ready is "ON".

To gain root access to MySQL, you must ssh into a node and sudo to run mysql.


