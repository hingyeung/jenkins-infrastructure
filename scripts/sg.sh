#!/usr/bin/env bash

stackname=$1
sg_stackname="${stackname}-sg"
vpc_stackname="${stackname}-vpc"

aws cloudformation deploy --stack-name ${sg_stackname} \
    --template-file infrastructure/security-groups.yaml \
    --parameter-overrides VPCStackName=${vpc_stackname}