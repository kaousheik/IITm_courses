#include <stdio.h>
void circuitA(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c);
void circuitB(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c,unsigned short int d);
void circuitC(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c,unsigned short int d);
void main()
{	FILE *fin;
	fin = fopen("input","r");
	while(fscanf(fin,))
	unsigned short int inp1, inp2, inp3, inp4, out;
	circuitA(out, inp1, inp2, inp3);
	circuitB(out, inp1, inp2, inp3, inp4);
	circuitC(out, inp1, inp2, inp3, inp4);
}