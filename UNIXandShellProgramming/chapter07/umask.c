/* umask(): Setting File Mode Creation Mask
 *
 * man 2 umask
 *
 * mod_t umask (mode_t new mask)
 *
 * The default file access mode is 0666 and the default directory access mode is 0777.
*/

#include <sys/stat.h>
#include <fcntl.h>

int main()
{
	int flag;
	int flag1;

	/* The system call returns the value of the previous mask. */
	umask(S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	umask(0022);

	flag = open("xyz.txt", O_WRONLY | O_TRUNC); /* 0666 – 0022 = 0644 */
	flag1 = open("zyx.txt", O_WRONLY | O_TRUNC, 0544); /* 0544 - 0022 = 0522 */
}

