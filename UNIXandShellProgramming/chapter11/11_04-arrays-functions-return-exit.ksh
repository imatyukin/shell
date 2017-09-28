# ARRAYS

# Indexed Array

# In an indexed array, each element of the array is indexed by a value. The lowest value of an
# index is 0 and the upper range is at least 4,095. It is through the help of an index that the
# elements in an array can be accessed randomly.

# To specify the maximum size of an indexed array:
# typeset -u variable[n] command
# Here, n is the upper bound of the array and variable is the name of the array.

# Declares an indexed array p that can contain a maximum of 10 values.
typeset -u p[10]
# To assign values to the array, we make use of their indexes:
p[0]=15
p[1]=9
p[2]=12
# Assigns value 25 to the array at index location 0.
p=25
# To assign multiple values to an array:
# set -A array_name value1 value2 ... valuen
set -A p 15 9 12
set -A names Ajay Manish Bharat Gunjan Omy
# Indexes are very helpful in accessing an array element randomly.
# To access an array element:
# ${array_name[index]}
# Accesses the second value, that is, the element at index location 1 in array p.
echo ${p[1]}
# We can also access more than one value at a time from an array:
echo ${p[*]}
echo ${p[@]}
# To display index locations:
# ${!array_name[index]}
# It will display the index value 2 instead of 12, which is the value stored at index location 2 in the array p.
echo ${!p[2]}
# These two examples will list all indexes in the array p.
echo ${!p[*]}
echo {!p[@]}

# Associative Array

# In an associative array, the index can be an arbitrary string. The indexes are usually considered
# keys and the array elements are considered values; hence, associative arrays are commonly
# termed key/value pairs. The value of any key from an associate array can be accessed by
# referring to it as the index in the array.
# Associative arrays must be declared with typeset -A:
# $ typeset –Ai names

# The array names is declared as an associative array that can store integer values. The subscript
# of the associative array can be strings. We can define the following three elements for the
# associative array names:
# names["ajay"]=10
# names["manish"]=15
# names["bharat"]=7
# To assign multiple values to an associative array:
names=([ajay]=10 [manish]=15 [bharat]=7)

# The procedure for accessing elements from an associative array via referring to their index.
# print "Marks of ajay is ${names[ajay])"

# To print the entire array.
print ${names[@]}

# FUNCTIONS

# Defining functions

function function_name {
	statements
}

# return Command

# return [value]

# Passing Arguments to Functions

# function_name arg1 arg2...

# exit()

# exit 0

# The exit() function terminates a script and returns the status to the parent process. The returned
# status can be used in analysing the execution of a script. Basically, successful execution of a
# script returns a value 0, whereas an unsuccessful one returns a non-zero value, which can then
# be used to analyse where the error occurred. The exit function may return a value in the 0–255 range.

# $?

# It reads the exit status of the last command executed. We can also use it after a function call
# to ascertain the status of the execution of the function.
