#!/bin/ksh

function disp {
	if (($1<=0))
	then
		return
	else
		typeset x
		echo "Hello World!"
		((x=$1-1))
		disp $x
	fi
}
disp 3
