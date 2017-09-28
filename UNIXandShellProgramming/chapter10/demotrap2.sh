#!/bin/bash

function exitfunc()
{
	echo " Received EXIT signal"
}
trap exitfunc EXIT
while true ; do
	sleep 1
done
exit 0
