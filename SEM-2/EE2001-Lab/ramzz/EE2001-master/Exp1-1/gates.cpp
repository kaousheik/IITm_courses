void AND(char  *out,char inp1, char inp2)              //AND Gate
{
  *out=inp1&inp2;                                                 //out=inp1 AND inp2
}
void OR(char *out,char inp1, char inp2)                //OR Gate
{
  *out=inp1|inp2;                                                 //out=inp1 OR inp2
}
void NOT(char *out,char inp)                                //NOT Gate
{
  *out=~inp;                                                      //out= NOT inp
}
void XOR(char *out,char inp1, char inp2)               //XOR Gate
{
  *out=inp1^inp2;                                                 //out=inp1 XOR inp2
}
void NAND(char *out,char inp1, char inp2)              //NAND Gate
{
  *out=~(inp1&inp2);                                              //out=inp1 NAND inp2
}
void NOR(char *out,char inp1, char inp2)               //NOR Gate
{
  *out=~(inp1|inp2);                                              //out=inp1 NOR inp2
}
void XNOR(char *out,char inp1, char inp2)              //XNOR Gate
{
  *out=~(inp1^inp2);                                              //out=inp1 XNOR inp2
}
