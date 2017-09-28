BEGIN{FS="|"}{
	printf"%20s %d %-20s\n",$1,$2,$3
	# by %20s the string will be right justified and by %-20s, the string will be left justified
}