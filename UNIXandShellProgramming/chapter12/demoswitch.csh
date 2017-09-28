#!/bin/csh

echo -n "Please enter a name: "
set name = $<
switch ( $name )
	case [Aa]jay:
		echo Marks of $name is 50
		breaksw
	case [Mm]anish:
		echo Marks of $name is 70
		breaksw
	case [Oo]my:
		echo Marks of $name is 80
		breaksw
	default:
		echo Marks of $name is 85
		exit 1
endsw
