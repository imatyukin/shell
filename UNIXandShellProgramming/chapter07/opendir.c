/* opendir(): Opening Directories
 *
 * man 3 opendir
 *
 * DIR *opendir(const char *dirname);
 *
 * The system call will be able to open up to a total of {OPEN_MAX} files and directories.
 * OPEN_MAX is an operating system parameter and its default value is 4096.
 * On successful execution of opendir(), it returns a pointer to an object of type DIR; else, a NULL pointer is returned and errno is set to indicate the error.
 *
*/

#include <dirent.h>
#include <stdio.h>

int main (int c, char *v[])
{
	struct dirent *pDirent;
	DIR *pDir;

	if (c < 2) {
		printf ("Usage: opendir <dirname>\n");
		return 1;
	}
	pDir = opendir (v[1]);
	if (pDir == NULL) {
		printf ("Cannot open directory '%s'\n", v[1]);
		return 1;
	}

	while ((pDirent = readdir(pDir)) != NULL) {
		printf ("[%s]\n", pDirent->d_name);
	}
	closedir (pDir);
	return 0;
}
