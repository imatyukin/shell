#!/usr/bin/env sh

# Exploring Users With dscl

# $ man dscl

# $ dscl
#  > cd /Local/Default/Users/
# /Local/Default/Users > ls
# /Local/Default/Users > read igor
# /Local/Default/Users > quit

# $ dscl . -authonly igor password
# $ sudo . - passwd /Users/igor newpassword
# Password:

dscl . -list /Users | grep -v _
echo '\n================================ RESTART ================================\n'
dscl . -list /Users RealName | grep -v _
echo '\n================================ RESTART ================================\n'
dscl . -list /Users GeneratedUID | grep -v _
echo '\n================================ RESTART ================================\n'
dscl . -read /Users/igor
echo '\n================================ RESTART ================================\n'
dscl . -read /Users/igor RecordName RealName NFSHomeDirectory
echo '\n================================ RESTART ================================\n'
dscl /Search -list /Users RealName | grep -v _
echo '\n================================ RESTART ================================\n'
dscl localhost -list /Local/Default/Users
echo '\n================================ RESTART ================================\n'
dscl localhost -list /Local/Default/groups
echo '\n================================ RESTART ================================\n'
dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]'

