#!/bin/ksh

dispval() {
	print "The value of x in function is $x"
	((x=x+5))
	return $x
}
x=2
dispval
print "The value of x outside the function is $x"
