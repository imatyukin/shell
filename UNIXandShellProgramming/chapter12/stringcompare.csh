#!/bin/csh

echo -n "Want to see list of files and directories yes/no? "
set ans = $<
if ($ans == "yes") then
	ls
endif
