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
    echo -e "$G selected logs deleted $N"
else
    echo -e "$R source directory $SOURCE_DIRECTORY doesnot exists $N"
    exit 1
fi

#method-2
# for file in $(find "$LOG_DIRECTORY" -type f -mtime +$DAYS -name "*.log"); do
#     rm -f "$file"
# done

# method-3
# find "$LOG_DIRECTORY" -type f -mtime +$DAYS -name "*.log" | while read -r file; do
#     rm -f "$file"
# done

