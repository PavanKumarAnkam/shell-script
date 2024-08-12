#!/bin/bash

USERID=$(id -u)
#TIMESTAMP=$(date +%F-%H-%M-%S) -- gives UTC timezone
TIMESTAMP=$(TZ="Asia/Kolkata" date +%F-%H-%M-%S) # for IST
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

#######   colors #######
# Define color variables
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m' # No Color (reset)

echo -e "${RED}This text is red${NC}"
echo -e "${GREEN}This text is green${NC}"
echo -e "${YELLOW}This text is yellow${NC}"
echo -e "${BLUE}This text is blue${NC}"


# Bold: Add 1; before the color code (e.g., \e[1;31m for bold red).
# Underline: Use 4; before the color code (e.g., \e[4;32m for underlined green).
echo -e "\e[1;31mThis text is bold red\e[0m"
echo -e "\e[4;32mThis text is underlined green\e[0m"

# You can mix colors and formatting to create more complex outputs.
echo -e "${RED}ERROR:${NC} Something went wrong!"
echo -e "${GREEN}SUCCESS:${NC} Operation completed successfully!"




