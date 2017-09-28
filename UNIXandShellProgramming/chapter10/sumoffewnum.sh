#!/bin/bash

# The script computes the sum of few entered numbers
echo "Enter the numbers to be added, enter -1 to quit"
s=0
read h
while test $h != -1
do
	s=`expr $s + $h`
	read h
done
echo "The sum is $s"
