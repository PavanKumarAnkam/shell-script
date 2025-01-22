#!/bin/bash

echo "Please enter username::"   # you will be prompted to enter username

read -s USERNAME       # here USERNAME is variable, -s is secure(not visible when typing)

echo "Please enter password::"   # you will be prompted to enter password

read -s PASSWORD                 # here PASSWORD is variable

echo "Username is: $USERNAME, Password is: $PASSWORD"  # just to verify