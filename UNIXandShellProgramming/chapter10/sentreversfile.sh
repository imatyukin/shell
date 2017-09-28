#!/bin/bash

exec 0< $1
while read k
do
	n=${#k}
	while (($n >0))
do
	h=$(expr "$k" : ".*\(.\)")
	echo -n "$h"
	k=$(expr "$k" : '\(.*\).')
	((n=n-1))
done
	echo
done
exec 0<&-
