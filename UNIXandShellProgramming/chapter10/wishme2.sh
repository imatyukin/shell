#/bin/bash

h=`date +"%T" | cut -c1-2`
case $h in
	0?:?? | 1[01]:??) echo "Good Morning";;
	1[2-7]:??) echo "Good Afternoon";;
	1[89]:??) echo "Good Evening";;
	*) echo "Good Night"
esac
