#!/usr/bin/env sh

# Logical Operators

# 1. && (And operator)
# 2. || (Or operator)
# 3. ! (Not operator)

cd /Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter10

# &&—And operator
# When we use && to connect two statements, the second statement is executed only when the first succeeds.
grep "current" bank.lst && echo "record exists"
echo '\n================================ RESTART ================================\n'

# ||—Or operator
# It is used to execute the command following it only when the previous command fails.
grep 'current' bank.lst || echo "record not found"
echo '\n================================ RESTART ================================\n'

# !—Not operator
# The not operator performs negation, that is, it reverses the meaning of the logical expression.
