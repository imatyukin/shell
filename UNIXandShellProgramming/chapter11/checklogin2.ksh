#!/bin/ksh

userslist="root igor john"
for person in $userslist
do
	finger $person
	print
done
