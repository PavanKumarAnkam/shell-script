#!/bin/bash

NUMBER=$1

#start
if [ $NUMBER -gt 10 ]
then
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10" 
fi
#end

# -gt --> greater than
# -lt --> less than
# -eq --> equals to 
# -ge --> greater than or equals to
# -le  --> less than or equals to