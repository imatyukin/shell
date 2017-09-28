#!/bin/bash

echo "Enter the user name to search: "
read n
if grep "$n" /etc/passwd > /dev/null
then
	echo "User exists"
else
	echo "Sorry! User does not exist"
fi
