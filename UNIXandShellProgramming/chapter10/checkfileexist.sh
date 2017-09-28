#!/bin/bash

while test ! -s $1
do
	sleep 60
done
echo "$1 exists now"
