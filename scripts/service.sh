#!/usr/bin/env bash

stackname=$1
service_stack="${stackname}-service"
vpc_stackname="${stackname}-vpc"
lb_stackname="${stackname}-lb"
ecs_stack="${stackname}-ecs"

aws cloudformation deploy --stack-name ${service_stack} \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file services/jenkins-service/service.yaml \
    --parameter-overrides \
        VPCStackName=${vpc_stackname} \
        LBStackName=${lb_stackname} \
        ECSStackName=${ecs_stack}