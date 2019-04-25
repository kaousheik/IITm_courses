module five_bit(a,b,s,cout);

input [4:0] a,b;
output [4:0] s,c;
output cout;

ha b1(a[0],b[0],s[0],c[1]);
fa b2(a[1],b[1],c[1],s[1],c[2]);
fa b3(a[2],b[2],c[2],s[2],c[3]);
fa b4(a[3],b[3],c[3],s[3],c[4]);
fa b5(a[4],b[4],c[4],s[4],cout);

endmodule

module comp(s,a,out);

input s,a;
output out;

//assign out = ~(s ^ a);

assign out =(s)?a:~a;

endmodule

module ha(a , b, sum , carry);

input a,b;
output sum,carry;

xor x1 (sum , a ,b ) ;
and a1 ( carry , a , b ) ;

endmodule

module fa(a , b , carryin , sum , carryout);

input a,b,carryin;
output sum,carryout;
wire w1,w2,w3;

xor x1 ( w1 , a ,b ) ;
and a1 ( w2 , a , b ) ;
xor x2 ( sum , carryin , w1 );
and a2 ( w3 , w1 , carryin );
or  o3 ( carryout , w2 ,w3 );

endmodule
