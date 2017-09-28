#!/bin/bash

cd $1
for f in *
do
	k=`head -1 $f`
	if test $k -eq $2
	then
		n=`cat $f | wc -l`
		if test $n -lt 50
		then
			echo "The file $f is small sized"
		else
			if test $n -lt 100
			then
				echo "The file $f is medium sized"
			else
				echo "The file $f is large sized"
			fi
		fi
	fi
done
