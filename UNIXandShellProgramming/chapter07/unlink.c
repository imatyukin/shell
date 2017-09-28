/* unlink(): Unlinking Files
 *
 * man 2 unlink
 *
 * int unlink(const char *path);
 *
 * The system call returns a value 0 if the unlinking was successful, and −1 on error.
*/

#include <unistd.h>
int main()
{
	unlink("xyz.txt");
}

