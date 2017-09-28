/* dup() and dup2(): Duplicating File Descriptors
 *
 * man 2 dup; man 2 dup2
 *
 * int dup(int fd);
 * int dup2(int fd, int fd2);
 *
 * The dup system call returns the file descriptor that points to the same file as the fd descriptor.
 * The dup2 system call makes the file descriptor fd2 point to the same file that the file descriptor fd is pointing at.
 * The system calls return or copy the file descriptor if successful and return a value of −1 otherwise.
*/

#include <fcntl.h>
#include <unistd.h>

int main()
{
	int fd1, fd2, fd3, fd4;

	fd1 = open( "xyz.txt", O_RDWR | O_TRUNC ); /* file xyz.txt is opened and is represented by file descriptor fd1 */

	fd2 = open( "pqr.txt", O_RDWR | O_TRUNC ); /* file pqr.txt is opened and is represented by file descriptor, fd2 */

	write( fd1, "Hello", 6 ); /* The text, Hello is written in file xyz.txt */

	write( fd2, "World", 6 ); /* The text, World is written in file pqr.txt */

	fd3 = dup(fd1); /* The file descriptor fd3 is set to point at the file where file descriptor fd1 is pointing i.e. at file xyz.txt */

	write( fd3, "Thanks", 7 ); /* The text, Thanks is written in the file xyz.txt */

	fd4 = dup(fd2); /* The file descriptor fd4 is set to point at the file where file descriptor fd2 is pointing i.e. at file pqr.txt */

	dup2(fd1,fd2); /* The file descriptor leaves the file pqr.txt where it was earlier pointing and is set to point at the file where file descriptor, fd1 is pointing i.e. at file xyz.txt */

	close(fd1); /* Close file with file descriptor fd1 */
	close(fd4); /* Close file with file descriptor fd4 */
}
