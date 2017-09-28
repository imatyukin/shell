#!/bin/bash

who | cut -f1 -d":" > usrnme
grep "^r" usrnme
