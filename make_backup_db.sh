#!/bin/bash

path_directory_backup="/home/tiago/Documentos/Backup";

if [ ! -d $path_directory_backup ]
then
    mkdir $path_directory_backup
fi

sudo mysqldump -u root -p$2  $1 > $path_directory_backup/$1.sql
if [ $? -eq 0 ] 
then
    echo "Backup perfom success."
else
    echo "Occour error to the try make backup."
fi