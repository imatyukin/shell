BEGIN{
printf "Enter account number: "
	getline acc <"/dev/tty"
	printf "Enter balance: "
	getline bal <"/dev/tty"
	print "Records are: " }
$1 > acc && $3 > bal{printf "%5d %-20s %d\n",$1,$2,$3}