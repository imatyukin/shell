#!/usr/bin/env sh

vm_stat

echo '\n================================ RESTART ================================\n'

( vm_stat 3 ) & sleep 10 ; kill $!