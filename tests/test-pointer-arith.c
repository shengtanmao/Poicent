int main()
{
	int *a;
	int *b;
	int i;
	/*a = malloc(2*4);*/
	a[0] = 1;
	a[1] = 2;
	b = a;
	b = b+1;
	if (a < b)
		i = *b;
	else
		i = *a;
	/*free(a);*/
	return i;
}
