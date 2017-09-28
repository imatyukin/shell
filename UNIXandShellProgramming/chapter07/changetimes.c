/* utime(): Changing Access and Modification Times
 *
 * man utime
 *
 * int utime(const char *filename, struct utimbuf *buf);
 *
 * filename represents the name of the file along with its relative or absolute path.
 * The parameter buf represents the pointer to the utimbuf structure that contains the actime and modtime fields, which will be used to change the access and modification times of the file(s).
 *
 * The fields in the utimbuf structure are as follows:
 * struct utimbuf {
 * 	time_t actime; # represents access time
 * 	time_t modtime; # represents modification time
 * };
 *
 * If successful, the system call returns 0, else returns −1, and sets the errno variable describing the error.
*/

#include <utime.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int n, fp;
	struct stat statusbuf;
	struct utimbuf timebuf;

	fp = open("xyz.txt", O_RDWR | O_TRUNC );
	if(fp == -1) /* Error in opening file */
		exit(-1);
	n = fstat(fp, &statusbuf);
	if(n == -1) /* The system call, fstat failed */
		exit(-1);
	close(fp);
	timebuf.actime = statusbuf.st_atime;
	timebuf.modtime = statusbuf.st_mtime;
	if (utime("xyz.txt", &timebuf) < 0) /* Error in changing access and modification times */
		exit(-1);
}

