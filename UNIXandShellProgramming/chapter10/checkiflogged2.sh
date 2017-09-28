#!/bin/bash

until who | grep root
do
	sleep 60
done
