BEGIN{
	while (( getline f < "bank.lst")>0)
	{
		print f > "bkw.lst"
	}
}