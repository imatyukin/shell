#!/bin/bash

ls > tmp.lst
echo "Enter the file name: "
read f
if grep $f tmp.lst >> /dev/null
then
	cat $f | tr '[a-z]' '[A-Z]' > $f
	echo "The file is converted to upper case"
else
	echo "Sorry! The file does not exist"
fi
