#!/bin/ksh

n=10
while [[ $n -gt 0 ]]; do
	print "$n"
	let n=n-1
done
