#!/bin/csh

entervalue:
echo -n "Enter a number between 1 and 4: "
set numb = $<
if ($numb == 1) then
	echo "One"
else if ($numb == 2) then
	echo "Two"
else if ($numb == 3) then
	echo "Three"
else if ($numb == 4) then
	echo "Four"
else
	echo "Invalid value. Please try again"
	goto entervalue
endif
