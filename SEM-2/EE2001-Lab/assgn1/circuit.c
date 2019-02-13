#include<stdio.h>

void circuitA(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c)
{
 unsigned short int s1, s2, s3, s4, s5;
 OR(&s1, a,c);
 OR(&s2, a, ~b);
 OR(&s3, ~a,b);
 OR(&s4, s3, ~c);
 AND(&s5, s1, s2);
 AND(out,s5, s4);
}

void OR(unsigned short int *,unsigned short int,unsigned short int);
void AND(unsigned short int *,unsigned short int,unsigned short int);

void main()
{
 unsigned short int a=1, b=0, c=0, out;
 circuitA(&out, a, b,c);
 printf("%hu \n", out);
}

void circuitB(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d)
{
 unsigned short int s1,s2,s3,s4,s5,s6;
 AND(&s1, c,d);
 AND(&s2, ~b,c);
 AND(&s3, b, ~d);
 OR(&s4, b ,d);
 OR(&s5, s1, s2);
 OR(&s6, s5, s3);
 AND(out, s6, s4);
}

void circuitC(unsigned short int *out, unsigned short int a, unsigned short int b, unsigned short int c, unsigned short int d)
{
 unsigned short int s1, s2, s3,s4;
 AND(&s1, ~b, c);
 AND(&s1, s1, ~d);
 AND(&s2, b, ~c);
 AND(&s2, s2, ~d);
 AND(&s3, a, c);
 AND(&s3, s3, ~d);
 AND(&s4, ~a, b);
 AND(&s4, s4, c);
 AND(&s4, s4, d);
 OR(out, s1, s2);
 OR(out, *out, s3);
 OR(out, *out, s4);
}
  
 
 



  
  
