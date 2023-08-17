#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
# else
#     echo "INFO:: You are root user"
fi

yum install git -y