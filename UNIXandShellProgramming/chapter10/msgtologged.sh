#!/bin/bash
until who | grep $1 >/dev/null
do
	sleep 60
done
write $1 << MSG
Hello how are you
late today?
MSG
