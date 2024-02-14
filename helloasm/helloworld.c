#include <stdio.h>

//We use longs (8 bytes) and not ints (4 bytes) because the processor is 64 bit
extern long sumfunc (long a, long b); // adds 2 numbers
extern long powfunc (long a, long b); // elevates a to the b power
extern void add10func (long *a); // increments variable a in 10

int main() {
	printf("Hello, World!\n");

	printf("sumfunc(4,3)=%i\n", sumfunc(4, 3));
	printf("powfunc(3,3)=%i\n", powfunc(3, 3));

    long mynumber=10; 
    printf ("mynumber before add10func: %i\n", mynumber);
    add10func (&mynumber);
    printf ("mynumber after add10func: %i\n", mynumber);

	return 0;
}
