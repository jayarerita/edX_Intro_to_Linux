#!/bin/bash

#ask user for a number 1 or 2

echo "Please enter 1 or 2: "
read NUMBER

#set up a return code
RC=0

if [ $NUMBER -eq 1 ]
then
	export EVAR="Yes"
else
	if [ $NUMBER -eq 2 ]
	then
		export EVAR="No"
	else
		#can only reach here with bad input
		export EVAR="Unknown"
		RC=1
	fi
fi

echo "The value of EVAR is: $EVAR"
exit $RC
