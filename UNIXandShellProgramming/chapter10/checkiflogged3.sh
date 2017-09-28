#!/bin/bash

echo "Enter the name of the person: "
read n
until who | grep $n
do
	echo "Waiting for $n to log in"
	sleep 60
done
echo "$n is logged in"
