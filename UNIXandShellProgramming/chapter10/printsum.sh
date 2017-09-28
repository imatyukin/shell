#!/bin/bash

echo "Enter few numbers and press ^d to see the total"
s=0
while read k; do
	let s=s+k
done
echo "Sum is $s"
