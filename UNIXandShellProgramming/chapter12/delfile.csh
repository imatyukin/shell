#!/bin/csh

echo -n "Enter file name to delete: "
set filename = $<
echo -n "Sure, want to delete this file yes/no? "
set reply=$<
switch ($reply)
	case [Yy]*:
		rm $filename
		echo "File $filename is deleted"
		breaksw
	default:
		echo "File not deleted"
		breaksw
endsw
