#!/bin/bash

cat school.txt > book
cat course.txt >> book
cat xyz.txt >> book
n=`cat book | wc -l`
echo "There are $n number of lines in the file book"
