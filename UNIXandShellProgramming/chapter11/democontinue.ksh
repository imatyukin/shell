#!/bin/ksh

n=0
while [[ $n -le 10 ]]; do
	let n=n+1
	if [[ n -eq 7 ]]
	then
		continue
	fi
	print "$n"
done
