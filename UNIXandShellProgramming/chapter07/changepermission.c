/* chmod() and fchmod(): Changing Permissions of Files
 *
 * man 2 chmod; man 2 fchmod
 *
 * int chmod( const char* filename, int mode )
 * int fchmod( int fd, mode_t mode );
 *
 * Brief description of the arguments used in the chmod() and fchmod() system calls:
 * filename Represents the name of the file including its relative or absolute path
 * Mode Represents the permissions that we wish to assign to the file/directory
 * fd Represents the file descriptor of the file
 *
 * Commonly used mode values:
 * S_IRWXU Read, write, and execute permissions for the owner
 * S_IRUSR Read permission for the owner
 * S_IWUSR Write permission for the owner
 * S_IXUSR Execute permission for the owner
 * S_IRWXG Read, write, and execute permissions for the group
 * S_IRGRP Read permission for the group
 * S_IWGRP Write permission for the group
 * S_IXGRP Execute permission for the group
 * S_IRWXO Read, write, and execute permissions for others
 * S_IROTH Read permission for others
 * S_IWOTH Write permission for others
 * S_IXOTH Execute permission for others
 *
 * Both methods return a value 0 when successful and a value −1 otherwise.
*/

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>

int main()
{
	int a;
	a = chmod("xyz.txt", 0744); /* Assigning r,w and x permissions to the User and only r permissions to the Group and Other for the file xyz.txt */
	if ( a==-1 ) perror("Error in changing permissions of the file xyz.txt");
}
