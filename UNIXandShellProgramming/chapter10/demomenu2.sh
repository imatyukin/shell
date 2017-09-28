#!/bin/bash

select k in month year quit
do
	case $k in
		month)cal;;
		year) yr=`date +%Y`
		cal $yr;;
		quit) echo Bye Bye
		exit;;
		*)echo Please try again
	esac
done
