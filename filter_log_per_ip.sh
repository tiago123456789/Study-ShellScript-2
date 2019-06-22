#!/bin/bash

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"
ip_address=$1

if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $ip_address
else
    echo "You need passed parameter following pattern of a ip."
fi
