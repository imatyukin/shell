BEGIN{print "Enter first name and sur name. To quit press ^d"}
{
	n=index($0," ")
	s=substr($0,n)
	f=substr($0,1,n-1)
	print "Name after interchanging first and sur name is ",s,f
}