# This script removes the lines with the specified pattern in file
awk 'BEGIN{
	printf "Enter a word: "
	getline w < "-"
	while (( getline k < "'$1'")>0)
	{
		n=index (k, w)
		if (n ==0)
			print k > "'$1'"
	}
}'