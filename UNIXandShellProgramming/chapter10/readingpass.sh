#!/bin/bash

printf "Enter password: "
stty -echo
read password
stty echo
printf "The password entered is $password\n"
