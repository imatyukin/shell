#!/bin/ksh

function factorial {
	if (( $1 <= 1 ))
	then
		return 1
	else
		typeset x
		typeset result
		(( x = $1 - 1 ))
		factorial $x
		(( result = $? * $1))
		return $result
	fi
}
print -n "Enter a value: "
read m
factorial $m
echo The factorial of $m is $?
