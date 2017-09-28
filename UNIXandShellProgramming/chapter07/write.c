/* write(): Writing to Files
 *
 * man 2 write
 *
 * ssize_t write(int fd, void *buf, int size);
 *
 * open() flag values:
 * O_CREAT Creates the file if it does not exist
 * O_WRONLY Opens the file for writing only
 * O_TRUNC Truncates the file size to 0 deleting older contents
 *
 * open() mode values:
 * S_IRWXU Read, write, and execute permissions for the owner
 *
 * the file descriptor of the file is assigned to a variable, fp
 *
 * the write() system call writes the text Hello World! comprising 13 bytes (including the NULL character) into the file
 * if the write() call is successful, the count of the number of bytes written into the file is assigned to the variable n
 * if the system call fails, it returns a value −1
*/

#include <unistd.h>
#include <fcntl.h>

int main()
{
	int n = 0;
	int fp = open("xyz.txt", O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);
	n = write(fp, "Hello World!", 13);
}

