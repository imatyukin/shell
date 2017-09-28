#!/bin/bash

until who | grep $1
do
	echo "waiting for $1 to log in"
	sleep 60
done
echo "$1 is logged in at `date +%H:%M:%S` time"
