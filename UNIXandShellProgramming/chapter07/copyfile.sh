clang copyfile.c -o copyfile
echo '$ cat xyz.txt'
cat xyz.txt
echo '$ cat pqr.txt'
rm pqr.txt
cat pqr.txt
echo '$ ./copyfile'
./copyfile
echo '$ cat pqr.txt'
cat pqr.txt
