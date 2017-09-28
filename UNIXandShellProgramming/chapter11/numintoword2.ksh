#!/bin/ksh

print -n "Enter a value between 1 and 4: "
read n
case $n in
	1) print "One"
	;;
	2) print "Two"
	;;
	3) print "Three"
	;;
	4) print "Four"
	;;
	*) print "The number is out of range"
	;;
esac
