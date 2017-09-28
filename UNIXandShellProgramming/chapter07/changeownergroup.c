/* chown(), lchown(), and fchown(): Changing Owner and Group of Files
 *
 * man 2 chown; man 2 lchown; man 2 fchown
 *
 * int chown(const char* filename, uid_t ownerID, gid_t groupID)
 * int lchown(const char* filename, uid_t ownerID, gid_t groupID)
 * int fchown(int fd, uid_t ownerID, gid_t groupID)
 *
 * Brief description of the arguments used in the chown(), lchown(), and fchown() system calls:
 * filename Represents the name and relative or absolute path of the file
 * ownerID Represents the ID of the owner, i.e., user ID
 * groupID Represents the ID of the group
 * Fd Represents the file descriptor of the file
*/

#include <unistd.h>
#include <stdio.h>

int main()
{
	int a,b,c;

	a = chown("xyz.txt",501, 20 ); /* Changes the owner and group to 501 and 20 respectively */

	if ( a == -1 ) perror("Error in changing Owner ID and Group ID of the file xyz.txt");

	b = chown("xyz.txt",501, -1 ); /* Changes the owner of the file to 501 keeping group ID unchanged */

	if ( b == -1 ) perror("Error in changing Owner ID of the file xyz.txt");

	c = chown("xyz.txt",-1, 20 ); /* Changes the group of the file to 20 keeping owner ID unchanged */

	if ( c == -1 ) perror("Error in changing Group ID of the file xyz.txt");
}
