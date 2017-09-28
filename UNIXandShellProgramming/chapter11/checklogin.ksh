#!/bin/ksh

until who | egrep $1; do
	sleep 60
done
