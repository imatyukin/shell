#!/bin/csh

morevalue:
echo -n "Enter a number: "
set n = $<
if ($n % 2 == 0) then
	echo "The number is even"
else
	echo "The number is odd"
endif
echo -n "More numerical yes/no? "
set ans = $<
if ($ans == "yes") goto morevalue
