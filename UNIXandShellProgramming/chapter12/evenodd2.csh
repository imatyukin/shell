#!/bin/csh

echo -n "Enter a number: "
set n = $<
if ( $n % 2 == 0) then
	exit 1
else
	exit 2
endif