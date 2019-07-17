#!/usr/bin/env bash

stackname=$1
lb_stackname="${stackname}-lb"
vpc_stackname="${stackname}-vpc"
sg_stackname="${stackname}-sg"

aws cloudformation deploy --stack-name ${lb_stackname} \
    --template-file infrastructure/load-balancers.yaml \
    --parameter-overrides VPCStackName=${vpc_stackname} SGStackName=${sg_stackname}