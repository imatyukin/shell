#!/bin/bash

cat $1 | tr '[a-z][A-Z]' '[A-Z][a-z]' > $2
