#!/bin/bash

# check for user type and if superuser then we can do installations
# if id = 0 --> superuser
# if we give id -u --> we get the id of user

# USERID=$(id -u) -->to execute a command and assign its output to a variable
# shell runs the id -u command and pass the o/p to USER

USERID=$(id -u)     
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]    # $? == exit status --> 0=success; 1-127=failure
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"


dnf install java-17-openjdk -y

if [ $? -eq 0 ]
then
    echo "java install success"
else
    echo "java install fail"
fi