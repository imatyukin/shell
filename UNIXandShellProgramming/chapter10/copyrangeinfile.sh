#!/bin/bash

# extracts $2–$3 lines from $1 and place then in $4
head -$3 $1 | tail +$2 > $4
