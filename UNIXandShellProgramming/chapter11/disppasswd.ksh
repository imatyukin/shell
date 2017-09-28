#!/bin/ksh

for username in $(cat /etc/passwd | cut -f1 -d":")
do
	print $username
done
