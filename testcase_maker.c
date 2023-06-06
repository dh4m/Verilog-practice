#include <stdio.h>
#include <stdlib.h>
#include <time.h>

# define BIT_NUM 40
# define TEST_CASE 10000
# define MAX 1099511627775 // 2^40 - 1

long long gen_40_bin(void)
{
	long long ret = 0;

	for (int i = 0; i < BIT_NUM; i++)
	{
		ret |= (long long)(rand() % 2) << i;
	}
	return (ret);
}

void print_bin(FILE *fp, unsigned long long num, int p)
{
	if (p == BIT_NUM - 1)
	{
		if (num == 0)
			fprintf(fp, "0");
		else
			fprintf(fp, "1");
		return ;
	}
	print_bin(fp, num >> 1, p + 1);
	if ((num & 1) == 0)
		fprintf(fp, "0");
	else
		fprintf(fp, "1");
}

int main(void)
{
	srand(time(NULL));
	FILE *fp = fopen("testv.tv", "w");
	{
		unsigned long long A, B, Cin;
		unsigned long long S, Cout;
		for (int i = 0; i < TEST_CASE; i++)
		{
			A = gen_40_bin();
			B = gen_40_bin();
			Cin = rand() % 2;
			S = (A + B + Cin) & 0xffffffffff;
			if (A + B + Cin > MAX)
				Cout = 1;
			else
				Cout = 0;
			print_bin(fp, A, 0);
			fprintf(fp, "_");
			print_bin(fp, B, 0);
			fprintf(fp, "_");
			fprintf(fp, "%lld", Cin);
			fprintf(fp, "_");
			print_bin(fp, S, 0);
			fprintf(fp, "_");
			fprintf(fp, "%lld", Cout);
			fprintf(fp, "\n");
		}
	}
	fclose(fp);
	return (0);
}