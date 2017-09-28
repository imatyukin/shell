{
	printf "%15s %15s \n", larger($1,$2), smaller($1,$2)
}
function larger(m,n)
{
	return m > n ? m:n
}
function smaller(m,n)
{
	return m < n ? m:n
}