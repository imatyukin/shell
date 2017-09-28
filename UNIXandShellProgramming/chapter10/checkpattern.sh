#!/bin/bash

grep $1 $2 || exit
echo "Record is found"
