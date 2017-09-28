$3==0{next}
{
	total +=$3
	count++
}
END {avrg = total/count
	printf "Total Amount :%d\n",total
	printf "Number Of Customer :%d\n ",count
	printf "Average Amount In Bank :%9.2f\n",avrg
}
