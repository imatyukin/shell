#/bin/bash

echo There are $# parameters
while [ $# -gt 0 ]
do
	echo $1
	shift
done
