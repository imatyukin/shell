#!/bin/bash

echo "Enter a digit between 0 to 9: "
read n
echo "You have entered $n. In words, it is "
case $n in
	0) echo "zero";;
	1) echo "one";;
	2) echo "two";;
	3) echo "three";;
	4) echo "four";;
	5) echo "five";;
	6) echo "six";;
	7) echo "seven";;
	8) echo "eight";;
	9) echo "nine";;
	*) echo "not displayed as the number is out of range"
esac
