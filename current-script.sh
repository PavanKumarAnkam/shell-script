#!/bin/bash

DATE='14-08-2024'
MONTH='AUGUST'

echo "b/f calling other script, date is:$DATE"
echo "Process instance Id of current script is:$$"

./other-script.sh

echo "a/f calling other script, date is:$DATE"