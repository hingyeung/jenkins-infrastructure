#!/usr/bin/env bash

stackname=$1
ecs_stack="${stackname}-ecs"
vpc_stackname="${stackname}-vpc"
sg_stackname="${stackname}-sg"

aws cloudformation deploy --stack-name ${ecs_stack} \
    --template-file infrastructure/ecs-cluster.yaml \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameter-overrides VPCStackName=${vpc_stackname} SGStackName=${sg_stackname}