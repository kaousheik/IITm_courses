void AND(short int *,short int , short int );   //AND gate
void NAND(short int *,short int , short int );  //NAND gate
void NOT(short int *, short int);               //NOT gate
void NOR(short int *,short int , short int );   //NOR gate
void XNOR(short int *,short int , short int );  //XNOR gate
void OR(short int *,short int , short int );    //OR gate
void XOR(short int *,short int , short int );   //XOR gate

//Structural Models for the Circuits
void C1_str(short int *out,short int a,short int b ,short int c){
  //z=(a+b)(a+NOT b)(NOT a+b+NOT c)

  short int tmp1,tmp2;

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

void C2_str(short int *out,short int b,short int c,short int d)
{
  //z=(cd + (NOT b)c + b(NOT d))(b + d)

  short int tmp1,tmp2;

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

void C3_str(short int *out,short int a,short int b,short int c,short int d)
{
  //F=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

  short int tmp1,tmp2,tmp3;

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
void C1_beh(short int *out,short int a,short int b ,short int c){
  //z=(a+b)(a+NOT b)(NOT a+b+NOT c)

  short int tmp1,tmp2;

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

void C2_beh(short int *out,short int b,short int c,short int d)
{
  //z=(cd + (NOT b)c + b(NOT d))(b + d)

  short int tmp1,tmp2;

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

void C3_beh(short int *out,short int a,short int b,short int c,short int d)
{
  //F=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd

  short int tmp1,tmp2,tmp3;

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
