#!/bin/bash

echo "Enter a number from 1 - 12:"
read month

case "$month" in
	"1" )	echo January;;
	"2" )	echo February;;
	"3" )	echo March;;
	"4" )	echo April;;
	"5" )	echo "May";;
	"6" )	echo "June";;
	"7" | "8" | "9" | "10" | "11" ) echo some others;;
	"12" )	echo "December";;
	* )	echo "incorrect entry";;
esac
exit 0
