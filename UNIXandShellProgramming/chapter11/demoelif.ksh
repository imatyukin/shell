#!/bin/ksh

echo "Enter marks: "
read m
if [[ $m -ge 60 ]]
then
	echo "First Division"
elif [[ $m -ge 45 ]]
then
	echo "Second Division"
else
	echo "Third Division"
fi