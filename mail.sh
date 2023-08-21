#!/bin/bash

#anyone in your project can call this script with arguments
# mail.sh TO_ADDRESS SUBJECT BODY TEAM_NAME ALERT_TYPE

TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

#echo "all args: $@"

FINAL_BODY=$(sed -e 's/TEAM_NAME/DevOps Team/g' -e 's/ALERT_TYPE/High Disk Usage/g' -e "s/MESSAGE/$BODY" template.html)

echo "$FINAL_BODY" | mail -s "$SUBJECT" $TO_ADDRESS

