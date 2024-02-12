#include <stdio.h>

extern int sumfunc (int a, int b); // adds 2 numbers
extern int powfunc (int a, int b); // elevates a to the b power
extern void add10func (int *a); // increments variable a in 10

int main() {
	printf("Hello, World!\n");

	printf("sumfunc(4,3)=%i\n", sumfunc(4, 3));
	printf("powfunc(3,3)=%i\n", powfunc(3, 3));

    int mynumber=10; 
    printf ("mynumber before add10func: %i\n", mynumber);
    add10func (&mynumber);
    printf ("mynumber after add10func: %i\n", mynumber);

	return 0;
}
