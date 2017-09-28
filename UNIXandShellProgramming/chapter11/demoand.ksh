#!/bin/ksh

echo "Enter marks: "
read m
if [[ $m -ge 60 ]]
then
	echo "First Division"
fi
if [[ $m -ge 45 && $m -lt 60 ]]
then
	echo "Second Division"
fi
if [[ $m -ge 36 && $m -lt 45 ]]
then
	echo "Third Division"
fi
if [[ $m -lt 36 ]]
then
	echo "Fail"
fi