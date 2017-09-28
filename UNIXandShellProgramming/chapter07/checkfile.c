/* access(): Checking Permissions
 *
 * man 2 access
 *
 * int access(const char *pathname, int mode);
 *
 * The mode can be represented by the following symbolic constants:
 * 1. F_OK: Checks whether the file exists
 * 2. R_OK: Checks whether the file has read permission
 * 3. W_OK: Checks whether the file has write permission
 * 4. X_OK: Checks whether the file has execute permission
 *
 * On success, that is, if all the requested permissions exist, the system call returns 0.
 * If any requested permission is denied, the system call returns a value −1 and sets the external variable errno that describes the reason for error.
*/

#include <stdio.h>
#include <unistd.h>

int main()
{
	char path[]="xyz.txt";
	if (access(path, F_OK) != 0)
		printf("The file, %s does not exist!\n", path);
	else
	{
		if (access(path, R_OK) == 0)
			printf("You have read access to the file, %s \n", path);
		if (access(path, W_OK) == 0)
			printf("You have write access to the file, %s \n", path);
		if (access(path, X_OK) == 0)
			printf("You have execute permission to the file, %s\n", path);
	}
}
