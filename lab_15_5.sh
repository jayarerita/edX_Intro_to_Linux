#!/bin/bash

function1()
{
	echo "function1"
}

function2()
{
	echo "function2"
}

function3()
{
	echo "function3"
}

#request a number 1,2, or 3 form a user
echo "Please enter 1 2 or 3:"
read NUMBER

function$NUMBER
