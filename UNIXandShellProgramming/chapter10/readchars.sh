#!/bin/bash

old_tty_settings=$(stty –g)	# Saving old settings
stty -icanon min 0 time 0
# min n – indicates the number of characters accepted
# time t – indicates the time allowed between each character
key=""
while [ "$key" != "#" ]
do
	printf "Type a key: "
	key=""
	while [ "$key" = "" ]
	do
		read key
	done
	printf "\nThe key typed is $key\n"
done
stty icanon
stty "$old_tty_settings"	# Restoring old settings.
