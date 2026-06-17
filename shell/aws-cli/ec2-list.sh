#!/bin/bash 
echo "Fetching EC2 Instances..." 
aws ec2 describe-instances \
--query "Reservations[*].Instances[*].[InstanceId,State.Name]" \
--output table 

