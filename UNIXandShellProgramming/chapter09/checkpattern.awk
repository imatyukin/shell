BEGIN{print "Enter a string followed by Enter key. To quit, press ^d"}
{
	n=index($0,"M")
	print "'M' is found at location ",n," in word ",$0
	n=index($0,"ic")
	print "'ic' is found at location ",n," in word ",$0
	n=index($0,"chip")
	print "'chip' is found at location ",n," in word ",$0
}