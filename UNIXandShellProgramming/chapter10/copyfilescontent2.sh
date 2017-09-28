#!/bin/bash

for f in b*.lst
do
	echo $f
	cat $f
done > hh.bat
