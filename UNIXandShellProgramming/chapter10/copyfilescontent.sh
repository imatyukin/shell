#!/bin/bash

echo "Enter name of directory: "
read a
for filename
in b*.lst
do
	cat $filename >> $a/merge.dat
done