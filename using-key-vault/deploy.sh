#!/bin/bash

##########################################################################
##  Deploys an API Management
##
##  Takes 2 parameters:
##
##  1- Name of resource group
##  2- API-M Service name

rg=$1
service=$2

echo "Resource group:  $rg"
echo "Service name:  $service"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    serviceName=$service