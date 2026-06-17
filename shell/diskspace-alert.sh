#!/bin/bash

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ $USAGE -gt 80 ]
then
echo "Disk usage above 80%"
echo "Usage is $USAGE%"
else
echo "Disk usage normal"
echo "Usage is $USAGE%"
fi

