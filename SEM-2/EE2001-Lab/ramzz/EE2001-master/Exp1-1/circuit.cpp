void AND(char *,char , char );   //AND gate
void NAND(char *,char , char );  //NAND gate
void NOT(char *, char);               //NOT gate
void NOR(char *,char , char );   //NOR gate
void XNOR(char *,char , char );  //XNOR gate
void OR(char *,char , char );    //OR gate
void XOR(char *,char , char );   //XOR gate

//Structural Models for the Circuits
void C1_str(char *out,char a,char b ,char c){
  //z=(a+b)(a+NOT b)(NOT a+b+NOT c)

  char tmp1,tmp2;

  NOT(&tmp1,a);             //tmp1 = (NOT a)
  NOT(&tmp2,c);             //tmp2 = (NOT c)
  OR(&tmp1,tmp1,tmp2);      //tmp1 = (NOT a + NOT c)
  OR(&tmp2,tmp1,b);         //tmp2 = (NOT a + NOT c + b)
  OR(&tmp1,a,c);            //tmp1 = (a+c)
  AND(&tmp2,tmp2,tmp1);     //tmp2 = (a+c)(NOT a + NOT c +b )
  NOT(&tmp1,b);             //tmp1 = (NOT b)
  OR(&tmp1,a,tmp1);         //tmp1 = (a+NOT b)
  AND(out,tmp1,tmp2);       //out  = (a+b)(a+ NOT b)(NOT a + b + NOT c)

}

void C2_str(char *out,char b,char c,char d)
{
  //z=(cd + (NOT b)c + b(NOT d))(b + d)

  char tmp1,tmp2;

  AND(&tmp1,c,d);           //tmp1=cd
  NOT(&tmp2,b);             //tmp2=NOT b
  AND(&tmp2,tmp2,c);        //tmp2=(NOT b)c
  OR(&tmp1,tmp1,tmp2);      //tmp1=cd + (NOT b)c
  NOT(&tmp2,d);             //tmp2=NOT d
  AND(&tmp2,b,tmp2);        //tmp2=b(NOT d)
  OR(&tmp1,tmp1,tmp2);      //tmp1=(cd + (NOT b)c + b(NOT d))
  OR(&tmp2,b,d);            //tmp2=(b + d)
  AND(out,tmp1,tmp2);       //out=(cd + (NOT b)c + b(NOT d))(b + d)

}

void C3_str(char *out,char a,char b,char c,char d)
{
  //F=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

  char tmp1,tmp2,tmp3;

  NOT(&tmp1,b);             //tmp1=(NOT b)
  NOT(&tmp2,d);             //tmp2=(NOT d)
  AND(&tmp1,tmp1,tmp2);     //tmp1=(NOT b)(NOT d)
  AND(&tmp1,tmp1,c);        //tmp1=(NOT b)c(NOT d)
  NOT(&tmp2,c);             //temp2=(NOT c)
  NOT(&tmp3,d);             //tmp3=(NOT d)
  AND(&tmp2,tmp2,tmp3);     //tmp2=(NOT c)(NOT d)
  AND(&tmp2,tmp2,b);        //tmp2=b(NOT c)(NOT d)
  OR(&tmp1,tmp1,tmp2);      //tmp1=(NOT b)c(NOT d) + b(NOT c)(NOT d)
  AND(&tmp2,tmp3,c);        //tmp2=c(NOT d)
  AND(&tmp2,tmp2,a);        //tmp2=ac(NOT d)
  OR(&tmp1,tmp1,tmp2);      //tmp1=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d)
  NOT(&tmp2,a);             //tmp2=(NOT a)
  AND(&tmp2,tmp2,b);        //tmp2=(NOT a)b
  AND(&tmp2,tmp2,c);        //tmp2=(NOT a)bc
  AND(&tmp2,tmp2,d);        //tmp2=(NOT a)bcd
  OR(out,tmp1,tmp2);        //out=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

}
//Behavioural Models for the Circuits
void C1_beh(char *out,char a,char b ,char c){
  //z=(a+b)(a+NOT b)(NOT a+b+NOT c)

  char tmp1,tmp2;

  tmp1 = ~a;                //tmp1 = (NOT a)
  tmp2 = ~c;                //tmp2 = (NOT c)
  tmp1 = tmp1|tmp2;         //tmp1 = (NOT a + NOT c)
  tmp2 = tmp1|b;            //tmp2 = (NOT a + NOT c + b)
  tmp1 = a|c;               //tmp1 = (a+c)
  tmp2 = tmp2&tmp1;         //tmp2 = (a+c)(NOT a + NOT c +b )
  tmp1 = ~b;                //tmp1 = (NOT b)
  tmp1 = a|tmp1;            //tmp1 = (a+NOT b)
  *out  = tmp1&tmp2;        //out  = (a+b)(a+ NOT b)(NOT a + b + NOT c)

}

void C2_beh(char *out,char b,char c,char d)
{
  //z=(cd + (NOT b)c + b(NOT d))(b + d)

  char tmp1,tmp2;

  tmp1 = c&d;               //tmp1=cd
  tmp2 = ~b;                //tmp2=NOT b
  tmp2 = tmp2&c;            //tmp2=(NOT b)c
  tmp1 = tmp1|tmp2;         //tmp1=cd + (NOT b)c
  tmp2 = ~d;                //tmp2=NOT d
  tmp2 = b&tmp2;            //tmp2=b(NOT d)
  tmp1 = tmp1|tmp2;         //tmp1=(cd + (NOT b)c + b(NOT d))
  tmp2 = b|d;               //tmp2=(b + d)
  *out  = tmp1&tmp2;        //out=(cd + (NOT b)c + b(NOT d))(b + d)

}

void C3_beh(char *out,char a,char b,char c,char d)
{
  //F=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

  char tmp1,tmp2,tmp3;

  tmp1 = ~b;             //tmp1=(NOT b)
  tmp2 = ~d;             //tmp2=(NOT d)
  tmp1 = tmp1&tmp2;      //tmp1=(NOT b)(NOT d)
  tmp1 = tmp1&c;         //tmp1=(NOT b)c(NOT d)
  tmp2 = ~c;             //temp2=(NOT c)
  tmp3 = ~d;             //tmp3=(NOT d)
  tmp2 = tmp2&tmp3;      //tmp2=(NOT c)(NOT d)
  tmp2 = tmp2&b;         //tmp2=b(NOT c)(NOT d
  tmp1 = tmp1|tmp2;      //tmp1=(NOT b)c(NOT d) + b(NOT c)(NOT d)
  tmp2 = tmp3&c;         //tmp2=c(NOT d)
  tmp2 = tmp2&a;         //tmp2=ac(NOT d)
  tmp1 = tmp1|tmp2;      //tmp1=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d)
  tmp2 = ~a;             //tmp2=(NOT a)
  tmp2 = tmp2&b;         //tmp2=(NOT a)b
  tmp2 = tmp2&c;         //tmp2=(NOT a)bc
  tmp2 = tmp2&d;         //tmp2=(NOT a)bcd
  *out  = tmp1|tmp2;     //out=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

}
