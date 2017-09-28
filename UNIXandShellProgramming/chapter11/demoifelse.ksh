#!/bin/ksh

echo "Enter marks: "
read m
if ((m >= 60 ))
then
	echo "First Division"
else
	echo "Second Division"
fi