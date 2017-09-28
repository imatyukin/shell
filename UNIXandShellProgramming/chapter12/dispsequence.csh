#!/bin/csh

@ count = 1
dispvalue:
echo $count
@ count++
if ($count <=10) goto dispvalue
