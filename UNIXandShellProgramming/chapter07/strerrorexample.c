/* ERROR HANDLING
 *
 * strerror Function
 * strerror_r Function
 *
 * man 3 strerror
 *
 * char *strerror(int errno);
 * errno contains the error code
 *
 * int strerror_r(int errno, char *error_buf, size_t buffer_len);
 * error_buf is where the error message is rendered for a maximum of buffer_len characters
 *
*/

#include <stdio.h>
#include <string.h>
#include <errno.h>

int main ()
{
	FILE *fp;
	fp = fopen ("letter.txt","r");
	if (fp == NULL) printf ("Error in opening file: %s\n", strerror(errno));
}

