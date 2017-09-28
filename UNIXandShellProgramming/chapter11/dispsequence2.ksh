#!/bin/ksh

i=1
until ((i>5)); do
	print "$i"
	let i=i+1
done
