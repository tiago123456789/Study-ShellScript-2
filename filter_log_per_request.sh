#!/bin/bash

type_request=$1
if [ -z $1 ]
then
    while [ -z $parameter_type ]
    do 
        read -p "Is need one parameter. Typing fowared: " parameter_type
    done
    type_request=$parameter_type
fi

type_request=$(echo $type_request | awk '{ print toupper($1)}')
cat apache.log | grep $type_request
if [ $? -ne 0 ] 
then
    echo "Parameter mencionated is invalid!"
fi