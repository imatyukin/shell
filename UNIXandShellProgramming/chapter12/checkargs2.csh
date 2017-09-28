#!/bin/csh

switch ($1)
	case ajay:
		echo "The argument passed is ajay"
		breaksw
	case a?:
		echo "The argument passed is two letter word beginning with
			letter a"
		breaksw
	case a*:
		echo "The argument passed is a word beginning with letter a "
		breaksw
	default:
		echo "The argument passed is something else"
		breaksw
endsw