/* fgetc() and fputc()
 *
 * fgetc(), getc(), and getchar(): Reading Characters
 *
 * man 3 fgetc; man 3 getc; man 3 getchar
 *
 * int fgetc(FILE *stream);
 * int getc(FILE *stream);
 * int getchar();
 *
 * stream represents the file from where we wish to read a character.
 *
 * Example The following example reads a character from the file pointed by file pointer fp and stores it in variable c.
 * c = fgetc(fp);
 *
 *
 * fputc(), putc(), and putchar(): Writing characters
 *
 * man 3 fputc; man 3 putc; man 3 putchar
 *
 * int fputc(int c, FILE *stream);
 * int putc(int c, FILE *stream);
 * int putchar(int c);
 *
 * c represents the character that we wish to write into the file represented by stream.
 *
 * Example The following example writes the character in variable c into the file pointed by file pointer fp.
 * fputc(c,fp);
 *
*/

#include <stdio.h>

int main()
{
	int c;
	FILE *fp1, *fp2;
	fp1 = fopen("xyz.txt", "r");
	fp2 = fopen("pqr.txt", "w");
	while((c = fgetc(fp1)) != EOF)
		fputc(c,fp2);
	fclose(fp1);
	fclose(fp2);
}
