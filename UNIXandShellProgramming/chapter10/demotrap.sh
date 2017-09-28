#!/bin/bash

hangupfunc()
{
	echo "Received Hangup (SIGHUP) signal"
}
trap hangupfunc SIGHUP
while true ; do
	sleep 1
done
exit 0
