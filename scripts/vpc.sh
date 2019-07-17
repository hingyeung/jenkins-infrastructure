#!/usr/bin/env bash

stackname=$1
vpc_stackname="${stackname}-vpc"

aws cloudformation deploy --stack-name ${vpc_stackname} \
    --template-file infrastructure/vpc.yaml \
    --parameter-overrides \
        VpcCIDR="10.180.0.0/16" \
        PublicSubnet1CIDR="10.180.8.0/21" \
        PublicSubnet2CIDR="10.180.16.0/21" \
        PrivateSubnet1CIDR="10.180.24.0/21" \
        PrivateSubnet2CIDR="10.180.32.0/21"
