#!/bin/bash

echo "Enter a string: "
read k
n=${#k}
while (( $n >0))
do
	h=$(expr "$k" : '.*\(.\)')
	echo $h
	k=$(expr "$k" : '\(.*\).')
	((n=n-1))
done
echo
