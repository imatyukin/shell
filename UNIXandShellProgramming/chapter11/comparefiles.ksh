#!/bin/ksh

if [[ $# -ne 2 ]]; then
	print "Insufficient number of command line arguments"
	exit 1
fi
diff $1 $2 > /dev/null
if [[ $? -eq 0 ]]; then
	rm $2
	print "Both files are exactly same, hence $2 removed"
else
	print "The two files, $1 and $2 differ"
fi
