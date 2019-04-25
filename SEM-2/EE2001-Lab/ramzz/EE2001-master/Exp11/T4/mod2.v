module sub(a,b,hell);

input [3:0] a,b,c;
reg [3:0] wi;
wire [3:0] sum,sum2,tmp;
output cout,hell;
wire s;
assign s=1'b0;
comp s0(s,b[0],c[0]);
comp s1(s,b[1],c[1]);
comp s2(s,b[2],c[2]);
comp s3(s,b[3],c[3]);
assign tmp = {s&~s,s&~s,s&~s,~s};
four_bit fb1(c,tmp,sum,cout);
four_bit fb2(sum,a,sum2,cout);
assign hell = sum2[3];
endmodule

module four_bit(a,b,s,cout);

input [3:0] a,b;
output [3:0] s,c;
output cout;

ha b1(a[0],b[0],s[0],c[1]);
fa b2(a[1],b[1],c[1],s[1],c[2]);
fa b3(a[2],b[2],c[2],s[2],c[3]);
fa b5(a[3],b[3],c[3],s[3],cout);

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
