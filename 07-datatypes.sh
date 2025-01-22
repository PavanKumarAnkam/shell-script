#!/bin/bash

NO1=$1
NO2=$2

SUM=${($NO1+$NO2)}

echo "Total of $NO1 and $NO2 is: $SUM"

# ex - 07-datatypes.sh 10 20  --> o/p = 30
#      07-datatypes.sh 10 pavan --> o/p = 20
#      07-datatypes.sh sachin pavan --> 0
#
