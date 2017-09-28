#!/bin/ksh

function sum {
	((sum=$1+$2))
	return $sum
}
sum 10 5
print The sum is $?
