#!/bin/bash

for k in *.dat
do
	p=`basename $k dat`
	mv $k ${p}bat
done
