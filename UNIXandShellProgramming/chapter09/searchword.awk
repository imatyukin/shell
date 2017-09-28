BEGIN{
	print "Enter the word"
	getline c < "-"
	}
{
	n=toupper($0)
	c=toupper(c)
	k=index(n,c)
	if (k>0)
	{
		print $0
	}
}