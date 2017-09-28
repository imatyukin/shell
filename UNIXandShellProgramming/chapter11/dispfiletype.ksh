#!/bin/ksh

for file in $(ls);do
	if [[ -d $file ]];then
		print "$file is a directory"
	else
		print "$file is not a directory"
	fi
done
