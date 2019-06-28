#!/bin/bash

##########################################################################
##  Deploys an API Management
##
##  Takes 2 parameters:
##
##  1- Organization Name
##  2- Admin email

org=$1
admin=$2

echo "Organization Name:  $org"
echo "Admin email:  $admin"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    organizationName=$org \
    adminEmail=$admin

