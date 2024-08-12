#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    echo "exit status:$1"
    echo "what is going on:$2"
}

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y
VALIDATE $? "Installing mysql" # here $? is 1st var and Installing mysql is 2nd var which we have given as $! and $2 above

dnf install git -y
VALIDATE $? "Installing git"

echo "is script proceeding?"
