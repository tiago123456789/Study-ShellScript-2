#!/bin/bash

path_directory_backup="/home/tiago/Documentos/Backup";
bucket_name=$1

aws s3 sync $path_directory_backup s3://$bucket_name