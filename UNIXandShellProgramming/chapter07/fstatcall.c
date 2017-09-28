/* stat(), fstat(), and lstat(): Accessing File Status Information
 *
 * man 2 stat; man 2 fstat; man 2 lstat
 *
 * int stat(const char *path, struct stat *buf);
 * int fstat(int fd, struct stat *buf);
 * int lstat(const char *path, struct stat *buf);
 *
 * Brief description of arguments used in stat(), fstat(), and lstat() system calls:
 * path Represents the name and the relative or absolute path of the file
 * fd Represents the file descriptor of the file
 * buf Represents the pointer to the stat structure that contains the status information of the specified file
 *
 * Brief description of the members of the stat structure:
 * st_mode The file permissions and file-type information
 * st_ino The inode number of the file
 * st_dev The device on which the file resides
 * st_uid The user ID of the file owner
 * st_gid The group ID of the file owner
 * st_size The file size
 * st_atime The time the file was last accessed
 * st_ctime The time the status of the file last changed permissions—owner, group, or content
 * st_mtime The time the file was last modified
 * st_nlink The count of the hard links to the file
 * st_blocks The number of blocks of size 512 bytes that have been allocated
 *
 * Symbolic constants representing different file types:
 * S_IFBLK Block special device
 * S_IFDIR Directory
 * S_IFCHR Character special device
 * S_IFIFO FIFO—named pipe
 * S_IFREG Regular file
 * S_IFLNK Symbolic link
 *
 * Few of the masks used to test file permissions:
 * S_IRWXU User’s read/write/execute permissions
 * S_IRWXG Group’s read/write/execute permissions
 * S_IRWXO Others’ read/write/execute permissions
 *
 * Brief description of the macros used to determine file types:
 * S_ISBLK() Test for block special file
 * S_ISCHR() Test for character special file
 * S_ISDIR() Test for directory
 * S_ISFIFO() Test for pipe or FIFO
 * S_ISREG() Test for regular file
 * S_ISLNK() Test for symbolic link
 * S_ISSOCK() Test for socket
 *
 * Whenever a system call or library function fails, it returns a value −1.
*/

#include <fcntl.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
	struct stat statusbuf;
	int n, fp;
	fp = open("xyz.txt", O_WRONLY | O_CREAT, S_IREAD | S_IWRITE);
	if(fp == -1) /* Error in opening file */
		exit(-1);
	n = fstat(fp, &statusbuf);
	if(n == -1) /* The system call, fstat failed */
		exit(-1);
	printf("The inode number of the file is = %llu\n", statusbuf.st_ino);
	printf("The size of the file is = %lld\n", statusbuf.st_size);
	printf("The number of blocks allocated to the file is = %lld\n", statusbuf.st_blocks);
}
