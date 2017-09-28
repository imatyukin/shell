#!/bin/ksh

if [[ (-f $1) && (-f $2) && (-r $1) && (-r $2) ]]
then
	exec 3< $1
	exec 4< $2
	exec 5> $3
else
	print "Sorry, files are not readable regular files"
	exit 2
fi
while read -u3 line; do
	print -u5 "$line"
done
while read -u4 line; do
	print -u5 "$line"
done
exec 3<&-
exec 4<&-
exec 5>&-
