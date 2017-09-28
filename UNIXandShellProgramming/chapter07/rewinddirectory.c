/* rewinddir(): Resetting Position in Directory Streams
 *
 * man 3 rewinddir
 *
 * void rewinddir(DIR *dirp);
 *
 * Our position in the given directory stream, dirp, will be reset to the beginning of the directory.
 * The system call does not return any value.
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
	rewinddir(mydir); /* The current position is set to the beginning in the directory stream */
	printf("The current position in the directory stream is %ld\n", telldir(mydir));
}

