#!/bin/bash

while [ ! -r bank.lst ]
do
	sleep 60
done
./changecase
