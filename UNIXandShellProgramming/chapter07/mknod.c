/* mknod(): Creating Files
 *
 * man 2 mknod
 *
 * int mknod(const char *path, mode_t mode, dev_t dev);
 *
 * Symbolic constants that represent different file types:
 * S_IFIFO FIFO-pipe
 * S_IFCHR Character-oriented file
 * S_IFDIR Directory
 * S_IFBLK Block-oriented file
 * S_IFREG Regular
 *
 * Symbolic constants representing the permissions for the new file:
 * S_ISUID Set user ID
 * S_ISGID Set group ID
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
 * The dev parameter is ignored if the file type is not a character or block-oriented type.
 * When successful, the method returns 0, otherwise it returns a value −1.
*/

#include <sys/stat.h>

int main()
{
	int flag;
	flag = mknod("stock.txt", S_IFREG | S_IRWXU | S_IRGRP | S_IROTH, 0);

	int flag1;
	flag1 = mknod("letter.txt", S_IFIFO | 0755, 0);
}
