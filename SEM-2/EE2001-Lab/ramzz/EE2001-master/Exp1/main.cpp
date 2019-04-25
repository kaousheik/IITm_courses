#include<bits/stdc++.h>
using namespace std;

//Declaring Circuit Functions
void C1_str(short int *,short int , short int , short int );                    //Circuit 1 Structural
void C1_beh(short int *,short int , short int , short int );                    //Circuit 1 Behavioural
void C2_str(short int *,short int , short int , short int );                    //Circuit 2 Structural
void C2_beh(short int *,short int , short int , short int );                    //Circuit 2 Behavioural
void C3_str(short int *,short int , short int , short int, short int );         //Circuit 3 Structural
void C3_beh(short int *,short int , short int , short int, short int );         //Circuit 3 Behavioural

short int a,b,c,d,out;          //Global Variables (To Be Used By Functions)

void Circuit1(){                                            //Circuit 1
  //Circuit 1 : z=(a+b)(a+NOT b)(NOT a+b+NOT c)
  ifstream data_input1("data3.dat");                                            //Opening input stream
  cout<<"\n";                                                                   //Print Truth Table Headers
  cout<<"|\tA"<<" |"<<"\tB"<<" |"<<"\tC"<<" |";
  cout<<"  C1 Structural"<<" |\t"<<"C1 Behavioural |";
  cout<<"\n";
  while(data_input1>> a >> b >> c ){                                            //Looping to Generate output
      C1_str(&out,a,b,c);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t\t "<<out<<" |\t\t     ";      //Printing Structural Output Value
      C1_beh(&out,a,b,c);
      cout<<out<<" |";                                                          //Printing Behavioural Output Value
      cout<<"\n";
  }
  data_input1.close();                                                          //Closing input stream
  cout<<"\n\n";
}
void Circuit2(){                                          //Circuit 2
  //Circuit 2 : z=(cd + (NOT b)c + b(NOT d))(b + d)
  ifstream data_input2("data3.dat");                                            //Opening input stream
  cout<<"|\tB"<<" |"<<"\tC"<<" |"<<"\tD"<<" |";                                 //Print Truth Table Headers
  cout<<"  C2 Structural"<<" |\t"<<"C2 Behavioural |";
  cout<<"\n";
  while(data_input2>> a >> b >> c ){                                            //Looping to Generate output
      C2_str(&out,a,b,c);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t\t "<<out<<" |\t\t     ";      //Printing Structural Output Value
      C2_beh(&out,a,b,c);
      cout<<out<<" |";                                                          //Printing Behavioural Output Value
      cout<<"\n";
  }
  cout<<"\n\n";
  data_input2.close();                                                          //Closing input stream
}
void Circuit3(){                                          //Circuit 3
  //Circuit 3 : F=(NOT b)c(NOT d) + b(NOT c)(NOT d) + ac(NOT d) + (NOT a)bcd
  ifstream data_input3("data4.dat");                                            //Opening input stream
  cout<<"|\tA"<<" |"<<"\tB"<<" |"<<"\tC"<<" |"<<"\tD"<<" |";                    //Print Truth Table Headers
  cout<<"  C3 Structural"<<" |\t"<<"C3 Behavioural |";
  cout<<"\n";
  while(data_input3>> a >> b >> c >> d ){                                       //Looping to Generate output
      C3_str(&out,a,b,c,d);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t"<<d<<" |\t\t ";               //Printing Structural Output Value
      cout<<out<<" |\t\t     ";
      C3_beh(&out,a,b,c,d);
      cout<<out<<" |";                                                          //Printing Behavioural Output Value
      cout<<"\n";
  }
  data_input3.close();                                                          //Closing input stream
  cout<<"\n";
}

int main(){
  Circuit1();         //Function to Print Circuit 1 Truth Table
  Circuit2();         //Function to Print Circuit 2 Truth Table
  Circuit3();         //Function to Print Circuit 3 Truth Table
  return 0;
}
