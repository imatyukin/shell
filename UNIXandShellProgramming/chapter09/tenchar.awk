# This script prints the matter from the fi le 10 characters at a time.
{
	n=length($0)
	if (n<=10)
		print $0
	else
	{
		for (i=1;n>10;i+=10)
		{
			print substr($0,i,10)
			n-=10
		}
		print substr($0,i)
	}
}