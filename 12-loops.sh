#!/bin/bash

# all args are in $@
for i in $@
do
    yum install $i -y
done