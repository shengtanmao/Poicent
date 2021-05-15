#include <stdlib.h>

int main()
{
	int *a;
	int i; int j;
	a = malloc(2*4);
	a[0] = 1;
	a[0+1] = 2;
	i = a[1];
	j = *a;
	free(a);
	return i + j;
}
