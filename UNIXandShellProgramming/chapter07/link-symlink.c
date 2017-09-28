/* link() and symlink(): Linking to Files
 *
 * man 2 link; man 2 symlink
 *
 * link(): int link(const char *path1, const char *path2);
 * symlink(): int symlink(const char *path1, const char *path2);
 *
*/

#include <unistd.h>

int main()
{
	link("xyz.txt", "abc-hard.txt");
	symlink("xyz.txt", "abc-symbolic.txt");
}

