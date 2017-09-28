echo '$ clang openreadcall.c -o openreadcall'
clang openreadcall.c -o openreadcall
echo $x
echo '$ cat xyz.txt'
cat xyz.txt
echo
echo '$ ./openreadcall xyz.txt xyzreverse.txt'
./openreadcall xyz.txt xyzreverse.txt
echo '$ cat xyz.txt'
cat xyz.txt
echo
echo '$ cat xyzreverse.txt'
cat xyzreverse.txt
echo

