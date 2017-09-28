#!/bin/ksh

echo "Enter marks: "
read m
if [[ $m -ge 60 ]]
then
	echo "First Division"
else
	echo "Second Division"
fi