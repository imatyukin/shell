#!/bin/csh

echo -n "Want to see list of files and directories yes/no? "
set ans = $<
if ($ans == "yes") then
	ls
else if ($ans == "no") then
	echo "You have entered No"
else
	echo "You have entered something other than yes or no"
endif

