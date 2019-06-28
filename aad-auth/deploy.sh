#!/bin/bash

##########################################################################
##  Deploys an API Management
##
##  Takes 2 parameters:
##
##  1- Name of resource group
##  2- Organization Name
##  3- Admin email

rg=$1
org=$2
admin=$3

echo "Resource group:  $rg"
echo "Organization Name:  $org"
echo "Admin email:  $admin"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    organizationName=$org \
    adminEmail=$admin

