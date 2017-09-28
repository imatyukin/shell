#!/bin/bash

exec 0< $1
exec 3> $2
x=1
while read k
do
	(( m = x % 2 ))
	if [ $m != 0 ]
	then
		echo $k 1>&3
	fi
	((x=x+1))
done
exec 0<&-
exec 3>&-
