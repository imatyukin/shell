#!/bin/ksh

n=1
while :
do
	print "$n"
	let n=n+1
	if [[ n -gt 10 ]]
	then
		break
	fi
done
