#!/bin/csh

echo -n "Enter a name: "
set name = $<
if ( $name == "ajay" ) then
	echo Marks of $name is 50
else if ( $name == "manish" ) then
	echo Marks of $name is 70
else if ( $name == "omy" ) then
	echo Marks of $name is 80
else
	echo Marks of $name is 85
endif
