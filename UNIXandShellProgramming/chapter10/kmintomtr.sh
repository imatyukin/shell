#!/bin/bash

echo "Enter the distance between two cities in km: "
read k
m=`expr $k \* 1000`
cm=`expr $m \* 100`
echo "Distance in meters is $m"
echo "The distance in centimeters is $cm"
