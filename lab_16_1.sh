#!/bin/bash

FIRST=$1
SECOND=$2

L1=${#FIRST}
L2=${#SECOND}

if [ -z "$FIRST" ]; then
	echo "The first string is of zero length"
else
	echo "the first string is of non-zero length"
fi

if [ -z "$SECOND" ]; then
	echo "The second string is of zero length"
else
	echo "The second string is of non-zero length"
fi

echo "L1: $L1  L2: $L2"

if [ $L1 -gt $L2 ]; then
	echo "L1 is longer than L2"
elif [ $L2 -gt $L1 ]; then
	echo "L2 is longer than L1"
else
	echo "They are the same length"
fi

if [[ $FIRST == $SECOND ]]; then
	echo "they are the same"
else
	echo "they are different"
fi

