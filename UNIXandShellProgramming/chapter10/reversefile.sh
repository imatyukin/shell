#!/bin/bash

# reversing the file
n=`cat $1 | wc -l`
x=1
while test $n -gt 0
do
	tail -$x $1 > k
	h=`head -1 k`
	echo "$h"
	((n=n-1))
	((x=x+1))
done
