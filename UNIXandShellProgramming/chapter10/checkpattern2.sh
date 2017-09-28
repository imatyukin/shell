#!/bin/bash

if grep $1 $2 > /dev/null
then echo "$1 is found in file $2"
else echo "$1 is not found in file $2"
fi
