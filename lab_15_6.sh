#!/bin/bash

#functions must be before the main part of the script

funca()
{
	let result=($1+$2)
}

funcs()
{
	let result=($1-$2)
}

funcm()
{
	let result=($1*$2)
}

funcd()
{
	if [ $2 == 0 ]; then
		result="error/0"
	else
		let result=($1/$2)
	fi
}

op=$1; arg1=$2; arg2=$3

[[ $# -lt 3 ]] && \
	echo "Usage: Provide an operation (a,s,m,d) and two numbers" && exit 1

[[ $op != a ]] && [[ $op != s ]] && [[ $op != d ]] && [[ $op != m ]] && \
	echo "operator must be a, s, m, or d not $op as supplied"

func$op $arg1 $arg2
echo $result

