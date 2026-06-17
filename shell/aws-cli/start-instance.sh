#!/bin/bash 
INSTANCE_ID="$1"
echo "Starting Instance $INSTANCE_ID" 
aws ec2 start-instances \
--instance-ids $INSTANCE_ID
