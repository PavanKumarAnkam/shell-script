#!/bin/bash

# boolean -> true(1) or false(0)
# array -> list of elements

MOVIES=("RRR" "DjTillu" "murari")

# size of above array is 3.
# index are 0,1,2
# list always starts with 0.

echo "First Movie is: ${MOVIES[0]}"     # o/p = RRR
echo "First Movie is: ${MOVIES[1]}"     # o/p = DjTillu
echo "First Movie is: ${MOVIES[@]}"     # o/p = RRR DjTillu murari