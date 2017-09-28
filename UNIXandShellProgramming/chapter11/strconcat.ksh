#!/bin/ksh

echo "Enter two strings: "
read str1
read str2
echo "The two strings entered are $str1 and $str2"
echo "The length of the first string is ${#str1} and of second string is ${#str2}"
str3="$str1$str2"
echo "The concatenated string is $str3"
echo "The length of the concatenated string is ${#str3}"