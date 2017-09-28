/* FUNCTIONS FOR DYNAMIC MEMORY MANAGEMENT
 *
 * malloc(), calloc(), realloc(), and free()
 *
 * malloc(): Allocating Memory Block
 *
 * MALLOC(3)
 *
 * void* malloc(size_t size)
 *
 * size determines the number of bytes of memory to allocate.
 * If the allocation is successful, malloc returns a pointer to the memory.
 * If memory allocation fails, it returns a NULL pointer.
 * The allocated memory in this function is uninitialized, that is, it is raw memory.
 *
 * Example The following example allocates 10 bytes of memory to character type pointer k.
 * char *k;
 * k = (char *)malloc(10 * sizeof(char));
 *
 *
 * calloc(): Allocating Arrays of Memory Blocks
 *
 * void* calloc(size_t nmemb, size_t size)
 *
 * nmemb represents the number of elements in the array and the second argument is the size in bytes of each element.
 * The function, if successful, returns a pointer to the allocated memory, and NULL otherwise.
 *
 * Example
 * The following example allocates an array of memory to character type pointer k where the array consists of five elements and each element is assigned 10 bytes of memory.
 * char *k;
 * k = (char*) calloc (5, 10*sizeof(char));
 *
 *
 * realloc(): Resizing Allocated Memory
 *
 * void* realloc (void *ptr, size_t size)
 *
 * ptr represents the block of the memory whose size we wish to change.
 * The new size is represented by the parameter, size.
 * The function returns the pointer to the resized block of allocated memory.
 * The newly allocated memory will be uninitialized.
 * If the ptr argument is set to NULL, the function will be equivalent to the malloc(size) function.
 * If the value of the size argument is set to zero, the function will be equivalent to free(ptr).
 *
 * Example
 * The following example reallocates 20 bytes of memory to character type pointer k.
 * char *k;
 * k = (char *)realloc(k, 20);
 *
 *
 * free(): Freeing Allocated Memory
 *
 * void free (void *ptr);
 *
 * ptr refers to the block of memory pointed to by pointer ptr that we wish to release.
 *
 * Example
 * The following example frees the memory assigned to character type pointer k.
 * free(k);
 *
*/

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main()
{
	char *k, *t; /* k and t are declared as character type pointers */
	int i;
	k = (char *)malloc(6 * sizeof(char)); /* Memory of 6 bytes is allocated to k */
	strcpy(k, "Hello"); /* Text, Hello is stored in k */
	printf("The string k contains the text: %s\n", k);
	/* The text, Hello in k is displayed on the screen */
	k = (char *)realloc(k, 13); /* Reallocating the memory to k, incrementing the allocated memory to 13 bytes */
	strcpy(k, "Hello World!"); /* Text, Hello World! is stored in k */
	printf("The string k now contains the text: %s\n", k);
	/* The text, Hello World! in k is displayed on the screen */
	free(k); /* freeing the memory allocated to k */
	t = (char *) calloc (3, 20*sizeof(char)); /* Allocating 3 blocks of memory, each of 20 bytes to t */
	printf("Enter three names\n");
	for (i=0;i<=2;i++)
	{
		scanf("%s", t);
		t+=20;
	} /* Storing the names entered by user in t */
	printf("The three names entered are as follows \n");
	t-=60;
	for (i=0;i<=2;i++)
	{
		printf("%s \n", t);
		t+=20;
	}
	/* Printing the names stored in t on the screen */
	free(t); /* Freeing up memory allocated to t */
}
