awk '/current/{
print $0 > "'$1'"
}' bank.lst