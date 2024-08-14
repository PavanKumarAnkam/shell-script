#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ] 
then
    echo -e "$G source directory exists $N"
    find "$SOURCE_DIRECTORY" -type f -mtime +14 -name "*.log" | xargs rm -f
else
    echo -e "$R source directory $SOURCE_DIRECTORY doesnot exists $N"
    exit 1
fi



