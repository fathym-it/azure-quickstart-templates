# Deploy Shibboleth Identity Provider on Ubuntu on a single VM.

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/shibboleth-singlevm-ubuntu/CredScanResult.svg)

[![Deploy To Azure](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fshibboleth-singlevm-ubuntu%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ffathym-it%2Fazure-quickstart-templates%2Fmaster%2Fshibboleth-singlevm-ubuntu%2Fazuredeploy.json)

This template deploys Shibboleth Identity Provider on Ubuntu. It creates a single Ubuntu VM, does a silent install of Apache Tomcat and Open JDK on it, and then deploys Shibboleth IDP on it.  After the deployment is successful, you can go to https://your-domain:8443/idp/profile/status (note port number) to check success. For further details, please refer to the Shibboleth IDP documentation at https://wiki.shibboleth.net/confluence/display/SHIB2/IdPInstall.

## Certificate:
In order to support SSL, this template creates a self signed certificate as a part of the installation script. This allows the template to be deployed without having to create your own certificate. In production deployments, you will need to create and use your own certificate instead of the self signed certificate.

# Test Setup
Here are the steps you can follow to create a testing setup including Shibboleth IDP deployed using this template, along with an OpenLDAP test server and a test SP available online.

# Install ADLDS
Install ADLDS as per the instructions described on https://blogs.msdn.microsoft.com/microsoftrservertigerteam/2017/04/10/step-by-step-guide-to-setup-ldaps-on-windows-server/. You would need following settings (with sample values) of the ADLDS instance to configure Shibboleth.
 	
	- Public IP - 125.524.52.54
	- Bind DN - example - john@testorg.com
	- Bind DN credentials - example - JohnZSQ12*(
	- Base DN - cn=Users,DC=testorg,DC=com

## Deploy Shibboleth IDP using this template.

Create a deployment of Shibboleth IDP using this template and SSH into the VM deployed.

## Update ldap.properties inside /opt/shibboleth-idp/conf directory as per the LDAP configuration. 
    - set idp.authn.LDAP.authenticator = adAuthenticator
	- set idp.authn.LDAP.ldapURL = ldap://125.524.52.54:389
	- set idp.authn.LDAP.returnAttributes= mail,uid,passwordExpirationTime,loginGraceRemaining
	- set idp.authn.LDAP.useStartTLS = false
	- set idp.authn.LDAP.useSSL = false
	- set idp.authn.LDAP.baseDN = cn=Users,DC=testorg,DC=com
	- set idp.authn.LDAP.userFilter= (sAMAccountName={user})
	- set idp.authn.LDAP.bindDN = john@testorg.com
	- set idp.authn.LDAP.bindDNCredential = JohnZSQ12*(
	- set idp.authn.LDAP.dnFormat = %s@testorg.com
	- Comment out idp.authn.LDAP.sslConfig & Comment out idp.authn.LDAP.trustCertificates as SSL is not used here

## Create metadata xml file for service provider. 
    Note: http://testshib.org is used as Service provider and Shibboleth is used as IDP.
	- Download metadata file from - https://www.testshib.org/metadata/testshib-providers.xml inside /opt/conf directory
	- Configure the metadata provider inside /opt/shibboleth-idp/conf/metadata-providers.xml file as follows
	<!-- TestShib -->
	<MetadataProvider id="HTTPMetadataTESTSHIB"
                  xsi:type="FileBackedHTTPMetadataProvider"
                  backingFile="%{idp.home}/metadata/testshib-providers.xml"
                  metadataURL="http://www.testshib.org/metadata/testshib-providers.xml"/>

		
## Set LDAP attribute resolver
	- Set LDAP Attribute Resolver as default attribute resolver. The default configuration for LDAP attribute resolver is present inside attribute-resolver-ldap.xml  We just have to replace existing attribute-resolver.xml with attribute-resolver-ldap.xml
	- These files are present in /opt/shibboleth-idp/conf/ directory
	- Following commands rename attribute-resolver-ldap.xml to attribute-resolver.xml

	sudo mv attribute-resolver.xml attribute-resolver-orig.xml
	sudo cp attribute-resolver-ldap.xml attribute-resolver.xml
	sudo vi attribute-resolver.xml

## Configure attribute-resolver
	- Configure the mapping of LDAP attributes with Shibboleth attributes
 	- These instructions would vary as per LDAP installation. Following are specific to forumsys ldap
	- Set sourceAttributeId attribute of Attribute with id=eduPersonPrincipalName to uid 
	<AttributeDefinition id="eduPersonPrincipalName" xsi:type="Prescoped" sourceAttributeID="uid">
        <Dependency ref="myLDAP" />
        <AttributeEncoder xsi:type="enc:SAML1ScopedString" name="urn:mace:dir:attribute-def:eduPersonPrincipalName" encodeType="false" />
        <AttributeEncoder xsi:type="enc:SAML2ScopedString" name="urn:oid:1.3.6.1.4.1.5923.1.1.1.6" friendlyName="eduPersonPrincipalName" encodeType="false" />
    </resolver:AttributeDefinition>
	- In the bottom of same xml we need to configure data connector settings for LDAP. Again these settings vary as per LDAP setup.
		<DataConnector id="myLDAP" xsi:type="LDAPDirectory"
				ldapURL="ldap://125.524.52.54:389"
				baseDN="cn=Users,DC=testorg,DC=com" 
				principal="john@testorg.com"
				principalCredential="JohnZSQ12*(">
			<FilterTemplate>
				<![CDATA[
					%{idp.attribute.resolver.LDAP.searchFilter}
				]]>
			</FilterTemplate>
			<dc:ReturnAttributes>%{idp.attribute.resolver.LDAP.returnAttributes}</dc:ReturnAttributes>
		</DataConnector>
	
## Configure attribute filter
	- After defining attributes you still have to specify which ones you release to service providers. This can be configured using attribute-filter.xml inside /opt/shibboleth-idp/conf directory
	- We set it so that basic attribute like eduPersonPrincipalName, uid and email are sent to all service providers.
	- <AttributeFilterPolicy id="example1">
        <PolicyRequirementRule xsi:type="ANY" />
	
## Comment out following in idp.properties to use Shibboleth.StorageService instead of Shibboleth.JPAStorageService
	- idp.consent.StorageService 
	- idp.consent.userStorageKey
	- idp.consent.userStorageKeyAttribute

## Restart the servlet container
    - service tomcat8 restart
	
## Test your installation
    - Follow the steps on http://testshib.org to test the shibboleth installation as IDP
    - Log files for Shibboleth reside inside /opt/shibboleth-idp/logs directory. The log files can be helpful for debugging any issues that show up during the login process.


