#!/bin/bash
echo "Enter your filename:"
read FILE
echo "Enter your Bucket name:" 
read BUCKET
#FILE="d.sh" 
#BUCKET="my-backup-bucket" 
aws s3 cp $FILE s3://$BUCKET/
