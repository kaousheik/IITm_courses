void AND(short int  *out,short int inp1, short int inp2)              //AND Gate
{
  *out=inp1&inp2;                                                 //out=inp1 AND inp2
}
void OR(short int *out,short int inp1, short int inp2)                //OR Gate
{
  *out=inp1|inp2;                                                 //out=inp1 OR inp2
}
void NOT(short int *out,short int inp)                                //NOT Gate
{
  *out=~inp;                                                      //out= NOT inp
}
void XOR(short int *out,short int inp1, short int inp2)               //XOR Gate
{
  *out=inp1^inp2;                                                 //out=inp1 XOR inp2
}
void NAND(short int *out,short int inp1, short int inp2)              //NAND Gate
{
  *out=~(inp1&inp2);                                              //out=inp1 NAND inp2
}
void NOR(short int *out,short int inp1, short int inp2)               //NOR Gate
{
  *out=~(inp1|inp2);                                              //out=inp1 NOR inp2
}
void XNOR(short int *out,short int inp1, short int inp2)              //XNOR Gate
{
  *out=~(inp1^inp2);                                              //out=inp1 XNOR inp2
}
