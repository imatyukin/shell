echo '$ clang copyemul.c -o copyemul'
clang copyemul.c -o copyemul
echo $x
echo '$ cat copyemul.txt'
cat copyemul.txt
echo '$ ./copyemul copyemul.txt pqr.txt'
./copyemul copyemul.txt pqr.txt
echo '$ cat pqr.txt'
cat pqr.txt
