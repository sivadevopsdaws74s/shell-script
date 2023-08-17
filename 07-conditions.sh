#!/bin/bash

# check if the number is greater than 10 or not
NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    echo "$NUMBER is greater than 10"
else
    echo "$NUMBER is not greater than 10"
fi