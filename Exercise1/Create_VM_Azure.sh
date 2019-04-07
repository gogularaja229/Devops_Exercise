#!/bin/bash

#Inputs

ResourceGroupName="linuxservers"
NetworkName="linux-vnet"
SubnetName="linux-subnet"
username1="linuxserver1"
password1="linuxserver1@123"
username2="linuxserver2"
password2="linuxserver2@123"


#Az CLI commands to create VM in Azure

az group create --name $ResourceGroupName --location westus2

az network vnet create -g $ResourceGroupName --location westus2 -n $NetworkName --subnet-name $SubnetName

az vm create -n vm-linux1 -g $ResourceGroupName --image UbuntuLTS --size Standard_B2ms --vnet-name $NetworkName --subnet $SubnetName --admin-username $username1 --admin-password $password1

az vm create -n vm-linux2 -g $ResourceGroupName --image UbuntuLTS --size Standard_B2ms --vnet-name $NetworkName --subnet $SubnetName --admin-username $username2 --admin-password $password2

echo "\n\n------------ Credentials to access server ----------\n\n"
echo "username1 = linuxserver1"
echo "password1 = linuxserver1@123"
echo "username2 = linuxserver2"
echo "password2 = linuxserver2@123"
