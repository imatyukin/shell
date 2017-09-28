BEGIN{
	printf "Enter the a/c no: "
	getline act < "-"
	printf "Records of customers are:\n\n"
}
$1 > act {printf "%-20s %.2f %20s %20s\n",$2,$3,$4,$5}