/* closedir(): Closing Directory Streams
 *
 * man 3 closedir
 *
 * int closedir(DIR *dirp);
 *
 * The system call closes the specified directory stream and frees the resources allocated to it.
 * The call returns a value 0 on success and -1 otherwise.
 *
*/

#include <dirent.h>

int main()
{
	DIR *mydir;
	mydir = opendir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7");
	closedir(mydir);
}
