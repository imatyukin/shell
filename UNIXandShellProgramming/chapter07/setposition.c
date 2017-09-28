/* seekdir(): Setting in Directory Streams
 *
 * man 3 seekdir
 *
 * void seekdir(DIR *dirp, long int loc);
 *
 * Here, dirp represents the directory stream and the long integer parameter loc represents the
 * location we wish to set the directory entry pointer in the directory stream. The next readdir()
 * operation will begin from the loc. There is one restriction as far as loc is concerned. It must
 * be the value that is returned from the earlier call to the telldir() function. If the value of
 * loc is not obtained from the earlier call to the telldir() function, we might get unexpected
 * results on subsequent call to the readdir() function.
*/

#include <dirent.h>
#include <stdio.h>

int main()
{
	DIR *mydir;
	struct dirent *files;
	long int loc;
	mydir = opendir("/Users/igor/Documents/workspace/shell/UNIXandShellProgramming/chapter7");
	loc=telldir(mydir);
	printf("The current location in the directory stream is %ld\n", loc);
	seekdir(mydir,loc); /* Current Position is set at 0th byte i.e. at the beginning of the directory stream */
	files=readdir(mydir);
	printf("The first directory entry found in this directory is %s (current directory) \n", files->d_name);
	loc=telldir(mydir);
	seekdir(mydir,loc); /* Current Position is set at the location determined by readdir() in the directory stream */
	printf("The current position in the directory stream is %ld\n", loc);
}
