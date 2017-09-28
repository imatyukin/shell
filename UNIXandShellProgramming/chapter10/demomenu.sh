#!/bin/bash

echo "MENU"
echo "1: List of files"
echo "2: Processes of user"
echo "3: Today's date"
echo "4: Users of system"
echo "5: Exit to prompt"
echo "Enter your choice"
read choice
case $choice in
	1)ls -l;;
	2)ps -f;;
	3)date;;
	4)who;;
	5)exit
esac
