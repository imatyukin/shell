#!/bin/ksh

ls > tmpfile 2>&1
if [[ $? = 0 ]]; then
	print "The list of files and directories is saved in tmpfile"
else
	print "The redirection failed and list of files and directories is not saved in the tmpfile"
fi
