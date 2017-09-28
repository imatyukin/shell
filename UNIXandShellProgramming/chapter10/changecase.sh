#!/bin/bash

echo "Enter a string"
read k
echo $k | tr '[a-z][A-Z]' '[A-Z][a-z]'
