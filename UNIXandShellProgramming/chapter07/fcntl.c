/* Record Locking
 *
 * fcntl
 *
 * int fcntl(int fd, int command, struct fl ock *fl ock_structure);
 *
 * The three command options for file locking are as follows:
 * 1. F_GETLK
 * 2. F_SETLK
 * 3. F_SETLKW
 *
 * The third parameter is a pointer to a struct flock that consists of the following members
 * short l_type It defines the type of desired lock.
 * 				The available options are given here:
 *				F_RDLCK: Read only (shared) lock
 *				F_WRLCK: Write (exclusive) lock
 *				F_UNLCK: Unlocks the region
 * pid_t l_pid It represents the process identifier requesting the lock.
 * short l_whence It represents location in the file to define region. The available options are SEEK_SET, SEEK_CUR, and SEEK_END.
 * off_t l_start It represents the start byte of the region of the file for which lock is requested.
 * off_t l_len It represents the length of the region in bytes.
 *
 * The l_type member indicates the type of lock. The following are the types of locks
 * F_RDLCK 	This value represents the read (shared) lock. The read lock is shareable among several
 * 			processes. Since it does not change the content of the file, several processes can
 *			have a shared lock on the same regions of the file. If any process has a shared lock,
 *			then no process can get an exclusive lock on that region. The file must be opened and
 *			must have read or read/write access to get a read lock.
 * F_UNLCK 	This indicates that the region is unlocked.
 * F_WRLCK 	This value represents the exclusive (or ‘write’) lock. Only a single process can have an
 *			exclusive lock on any particular region of a file. Once a process has an exclusive lock,
 *			no other process will be able to get any other type of lock, neither read nor write lock on
 *			that region. The file must be opened and must have read/write access to get a write lock.
 *
 * The l_whence, l_start, and l_len members define a region in a file to be locked.
 * l_whence indicates the location in the file, that is, whether it is the beginning, current, or end of the file and is represented by the symbolic constants, SEEK_SET, SEEK_CUR, and SEEK_END.
 * l_start represents the first byte related to the location specified in l_whence.
 * The l_len parameter defines the number of bytes in the region.
 * The l_pid parameter represents the process identifier holding a lock.
 *
 * The three command options for file locking are as follows:
 * F_GETLK command
 * F_SETLK command
 * F_SETLKW command
 *
 * Types of locks
 * The various types of locks are as follows:
 * Read locks
 * Write locks
 *
 * Examples The following statements apply a read lock in the file lockfile.txt in the region that extends from the 5th byte to the 15th byte.
 * int fd, flag;
 * struct flock region;
 * fd = open("lockfile.txt", O_RDWR | O_CREAT, 0744);
 * region.l_type = F_RDLCK;
 * region.l_whence = SEEK_SET;
 * region.l_start = 5;
 * region.l_len = 10;
 * flag = fcntl(fd, F_SETLK, &region);
 * if (flag == -1) {
 * printf("Region could not be locked\n");
 * } else {
 * printf("Region successfully locked\n");
 * }
 *
*/

/* The following statements apply a write lock (exclusive lock) in the file lockfile.txt in the region that extends from the 20th byte to the 30th byte. */

#include <fcntl.h>
#include <stdio.h>

int main()
{
	int fd, flag;
	struct flock region;
	fd = open("lockfile.txt", O_RDWR | O_CREAT, 0744);
	region.l_type = F_WRLCK;
	region.l_whence = SEEK_SET;
	region.l_start = 20;
	region.l_len = 10;
	flag = fcntl(fd, F_SETLK, &region);
	if (flag == -1) {
		printf("Region could not be locked\n");
	} else {
		printf("Region successfully locked\n");
	}
}
