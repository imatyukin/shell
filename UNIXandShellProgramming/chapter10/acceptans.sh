#!/bin/bash

echo "What kind of tree bears acorns?"
read ans
ans=`echo $ans | tr a-z A-Z`
if [ $ans == "OAK" ]
then
	echo "Correct Answer"
else
	echo "Sorry the answer is wrong"
fi
