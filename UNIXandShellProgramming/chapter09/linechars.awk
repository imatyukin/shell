{
	print $0, "\t", n=length($0)
	c +=n
}
END {print "Total characters in ",FILENAME, "are", c}
# FILENAME is the reserved word which designates the script file name