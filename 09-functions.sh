#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)
# this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo "Installation ... FAILURE"
        exit 1
    else
        echo "Installation ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?