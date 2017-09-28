# Replacing a pattern in one file and copying into another file
#!/bin/bash

sed s/were/are/g $1 > $2
