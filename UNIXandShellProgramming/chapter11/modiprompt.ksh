#!/bin/ksh

PS3="Select an option(1-4): "
select i in Date Listing Users Exit
do
	case $i in
		Date) date;;
		Listing) ls;;
		Users) who;;
		Exit) exit;;
	esac
done
