#!/bin/ksh

echo "Enter a string: "
read str
echo "The original string is $str"
echo "The string after deleting first 2 characters is ${str#??}"
echo "The string after deleting the last 2 characters is ${str%??}"