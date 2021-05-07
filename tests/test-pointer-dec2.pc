int* add(int* a, int* b, int* res)
{
	*res = *a + *b;
	return res;
}

int main()
{
	int a;
	int b;
	int res;
	return *add(&a, &b, &res);
}
