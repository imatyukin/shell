/* readdir(): Reading Directories
 *
 * man 3 readdir
 *
 * struct dirent *readdir(DIR *dirp);
 *
 * The system call returns a pointer to a structure, dirent, which represents the directory entry
 * at the current position in the directory stream specified through the argument dirp.
 *
 * struct dirent
 * {
 *   long d_ino;
 *   off_t d_off;
 *   unsigned short d_reclen;
 *   char d_name [NAME_MAX+1];
 * }
 *
 * 1. d_ino is an inode number.
 * 2. d_off is the offset or distance from the start of the directory to this dirent.
 * 3. d_reclen is the size of d_name, not counting the NULL terminator.
 * 4. d_name is a NULL-terminated name of the file.
 *
 * With every read operation, the system call buffers several directory entries.
 * It also marks for update the st_atime field of the directory each time the directory is read.
 * If successful, the system call returns a value 1; at the end of the directory, it returns a value 0;
 * on error, it returns −1 and also sets the errno accordingly.
 * The kind of errors that may occur are as follows:
 * 1. EBADF: Occurs when the file descriptor fd is invalid.
 * 2. EFAULT: Occurs when the argument points outside the calling process’s address space.
 * 3. EINVAL: Occurs when the result buffer is too small.
 * 4. ENOENT: Occurs when the directory does not exist.
 * 5. ENOTDIR: Occurs when the file descriptor does not refer to a directory.
 *
*/

#include <dirent.h>
#include <errno.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	DIR *mydir;
	struct dirent *files;
	if (argc == 2)
	{
		mydir = opendir(argv[1]);
		if (mydir)
		{
			while ((files = readdir(mydir)))
			printf("%s\n", files->d_name);
		}
		else if (errno == ENOENT)
			perror("The specified directory does not exist.");
		else if (errno == ENOTDIR)
			perror("The specified file is not a directory.");
		else if (errno == EACCES)
			perror("You do not have the right to open this folder.");
		else
			perror("Error in finding file");
		}
	else
		perror("Insufficient number of arguments.");
}

