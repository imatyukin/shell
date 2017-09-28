#!/bin/ksh

echo "Enter a string: "
read str
echo "The original string is $str"
typeset -u str
echo "The string in upper case is $str"
typeset -l str
echo "The string in lower case is $str"