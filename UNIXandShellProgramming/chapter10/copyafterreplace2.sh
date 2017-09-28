#!/bin/bash

# Replacing a pattern in one file and copying into another file (IInd method)
echo Enter the pattern to replace
read k
echo Enter the new pattern
read h
sed s/$k/$h/g $1 > $2
