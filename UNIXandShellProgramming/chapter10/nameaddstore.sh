#!/bin/bash

k=y
while [ "$k" = "y" ]
do
	echo "Enter the name and the address: "
	read n a
	echo "$n|$a" >> address.lst
	echo "Want to enter more(y/n)? "
	read h
	case $h in
		y*|Y*) k=y;;
		n*|N*) k=n;;
		*) k=y;;
	esac
done
