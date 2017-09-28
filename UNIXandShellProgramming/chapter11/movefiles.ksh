#!/bin/ksh

for file in $*; do
	case $file in
		*.lst|*.txt) mv $file ${HOME}/data ;;
		*.[co]) mv $file ${HOME}/programs;;
		*) print $file not moved ;;
	esac
done
