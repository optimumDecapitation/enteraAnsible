#!/bin/bash
echo '{"hosts":' > awsHostIPs.json
AWS_ACCESS_KEY_ID=$1 AWS_SECRET_ACCESS_KEY=$2 aws ec2 describe-instances --region $3 --query "Reservations[].Instances[].[PublicIpAddress],Tags[?Key=='DemoEnvironment'].Value" >> awsHostIPs.json
echo '}' >> awsHostIPs.json 