awk 'BEGIN{
	while (( getline f < "'$1'")>0)
	{
		print f > "'$2'"
	}
}'