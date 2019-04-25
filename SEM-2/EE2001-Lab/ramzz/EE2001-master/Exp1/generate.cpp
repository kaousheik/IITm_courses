#include<bits/stdc++.h>
using namespace std;

int main(){
  ofstream file("data3.dat");
  int n,val;
  cout<<"Enter number of bits : ";
  cin>>n;
  for(int i=0;i<pow(2,n);i++){
    val = i;
    for(int j=n-1;j>=0;j--){
      file<<(int)(val/pow(2,j))<<"\t";
      val =val- ((int)(val/pow(2,j)))*pow(2,j);
    }
    file<<"\n";
  }
  return 0;
}
