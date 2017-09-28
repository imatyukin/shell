#!/bin/ksh

wantmore="yes"
while [[ $wantmore == "yes" ]]; do
	print -n "Enter a value: "
	read m
	let n=m*m
	print "Entered value is $m and its square is $n"
	print -n "Want to try more yes/no: "
	read wantmore
done
