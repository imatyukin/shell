#!/bin/csh

foreach file (*.txt)
	set newfile = `basename $file .txt`
	cp $file $newfile.dat
end
