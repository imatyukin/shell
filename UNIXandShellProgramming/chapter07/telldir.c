/* telldir(): Knowing in Directory Streams
 *
 * man 3 telldir
 *
 * long int telldir(DIR *dirp);
 *
 * The system call returns an integer value to indicate the current position in the directory stream specified through the parameter dirp.
 * We get the pointer to the directory stream dirp on executing the opendir() system call.
 *
*/

#include <dirent.h>
#include <stdio.h>

int main()
{
	DIR *mydir;
	struct dirent *files;
	mydir = opendir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7");
	files = readdir(mydir);
	printf("The current position in the directory stream is %ld\n", telldir(mydir));
}
