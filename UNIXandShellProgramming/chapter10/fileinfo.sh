#!/bin/bash

ls -l >tmp
echo "Enter the file name whose details are required: "
read k
exec 0< tmp
while read f
do
	if echo "$f" | egrep $k >/dev/null
	then
		flt=`echo "$f" | cut -c1`
		perm=`echo "$f" | cut -c2-10`
		lnk=`echo "$f" | cut -c13`
		own=`echo "$f" | cut -c15-19`
		grp=`echo "$f" | cut -c21-25`
		echo "The file type is $flt"
		echo "The permissions of file are $perm"
		echo "The number of links are $lnk"
		echo "The owner of the file is $own"
		echo "The group is $grp"
	fi
done
