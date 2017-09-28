#!/bin/bash
echo "How many numbers are there? "
read n
s=0
x=1
while test $x -le $n
do
	echo "Enter a number: "
	read h
	s=`expr $s + $h`
	((x=x+1))
done
echo "The sum is $s"
