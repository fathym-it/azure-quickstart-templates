#!/bin/bash

azure group create --name WindowsSecureRG --location "West US"
azure group deployment create --resource-group WindowsSecureRG --template-uri https://raw.githubusercontent.com/fathym-it/azure-quickstart-templates/master/101-simple-windows-vm/azuredeploy.json"
