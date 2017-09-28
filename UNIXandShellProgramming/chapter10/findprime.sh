#!/bin/bash

echo "Enter a number: "
read n
i=2
while [[ i -lt n ]]
do
	((m = n % i))
	if test $m -eq 0
	then
		echo "The number, $n is not prime number"
		exit
	fi
	((i=i+1))
done
echo "The number, $n is a prime number"
