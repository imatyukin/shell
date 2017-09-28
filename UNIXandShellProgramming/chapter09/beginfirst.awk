{
	if($1=="FIRST")
		start=NR
	if ($NF=="END")
	{
		print $0
		exit
	}
	if (NR >= start && start != 0)
		print $0
}