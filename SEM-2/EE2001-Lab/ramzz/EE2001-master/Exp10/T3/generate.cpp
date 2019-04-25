#include<bits/stdc++.h>
using namespace std;

int main(){
  ofstream file("data3.dat");
  int n,val1,val2;
  cout<<"Enter number of bits : ";
  cin>>n;
for(int s=0;s<2;s++){  
for(int i=0;i<pow(2,n);i++){
    for (int j=0;j<pow(2,n);j++){
		
		val1 = i;	
		val2 = j;
		file<<"#10 a = 4'b";
		for(int k=n-1;k>=0;k--){
	   	file<<(int)(val1/pow(2,k));
	   	val1 =val1-((int)(val1/pow(2,k)))*pow(2,k);	
		}
		file<<"; b = 4'b";
		for(int k=n-1;k>=0;k--){
	   	file<<(int)(val2/pow(2,k));
	   	val2 =val2-((int)(val2/pow(2,k)))*pow(2,k);	
		}
		file<<"; s = 1'b"<<s<<";\n";
	}		
    }
  }
  return 0;
}
