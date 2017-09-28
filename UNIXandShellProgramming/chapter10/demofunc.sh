#!/bin/bash

sum()
{
	s=0
	x=1
	while test $x -le $1
	do
		((s=s+x))
		((x=x+1))
	done
	return $s
}
sum $1
echo "The sum of $1 sequence number is $?"
