#!/bin/ksh

x=2
dispval() {
	typeset x
	x=$1
	print "The value of x in function is $x"
	x=x+5
	return $x
}
dispval 10
print "The value of x outside the function is $x"
