#include<stdio.h>

void AND(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = inp1 & inp2;
} 

void OR(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = inp1 | inp2;
}

void XOR(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = inp1 ^ inp2;
}

void NOT(unsigned short int *out,unsigned short int inp1)
{
 *out = ~inp1;
}

void NAND(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = ~(inp1 & inp2);
}

void NOR(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = ~(inp1 | inp2);
}

void XNOR(unsigned short int *out,unsigned short int inp1, unsigned short int inp2)
{
 *out = ~(inp1 ^ inp2);
}

//void main()
//{
 /*unsigned short int i1, i2, out;
 scanf("%hu %hu", &i1, &i2);

 NOT(&out, i1);
 printf("%hu %hu %hu \n", i1,i2,out);*/
//}

