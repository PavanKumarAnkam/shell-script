#!/bin/bash

USERID=$(id -u)
#TIMESTAMP=$(date +%F-%H-%M-%S) -- gives UTC timezone
TIMESTAMP=$(TZ="Asia/Kolkata" date +%F-%H-%M-%S) # for IST
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)   # SCRIPT_NAME=$(basename "$0" .sh) --> 2nd approach

LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

# VALIDATE() { ---- we can write a sample function like this
#     echo "exit status:$1"
#     echo "what is going on:$2"
# }

VALIDATE() {
    if [ $1 -ne 0 ]; then    # syntax : Added space after 'if'
        echo "$2 failed..."
        exit 1
    else
        echo "$2 success..."
    fi
}

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE # &>>: Redirects both stdout and stderr
VALIDATE $? "Installing mysql" # here $? is 1st var and Installing mysql is 2nd var which we have given as $! and $2 above

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

#NOTE:
# >>: Redirects only stdout.
# &>>: Redirects both stdout(output) and stderr(error).