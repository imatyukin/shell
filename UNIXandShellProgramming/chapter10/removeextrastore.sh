#!/bin/bash

cat $1 | while read k
do
	echo $k
done > $2
