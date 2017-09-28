#!/bin/ksh

echo "Enter a value between 1 and 4: "
read n
if [[ $n -eq 1 ]]
then
	echo One
elif [[ $n -eq 2 ]]
then
	echo Two
elif [[ $n -eq 3 ]]
then
	echo Three
else
	echo Four
fi
