#!/bin/ksh

print -n "Enter file name to delete: "
read filename
if [[ -f $fi lename ]]
then
	print -n "Sure want to delete this file yes/no? "
	read ans
	case $ans in
		y*) rm ${filename}
			print "The file is deleted"
			;;
		n*) print "The file is not deleted"
			;;
		*) print "Please enter either yes or no"
	esac
else
	print "$filename is not a file"
fi
