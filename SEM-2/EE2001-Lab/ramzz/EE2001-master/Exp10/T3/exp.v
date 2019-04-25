module t3(a,b,s,sum2,cout);

input [3:0] a,b;
input s;
wire [4:0] c,d,tmp;
output [4:0] sum,sum2;
output cout;

comp s0(s,b[0],c[0]);
comp s1(s,b[1],c[1]);
comp s2(s,b[2],c[2]);
comp s3(s,b[3],c[3]);
assign c[4] = c[3];
assign tmp = {s&~s,s&~s,s&~s,s&~s,~s};
assign d = {a[3],a};

five_bit fb1(c,tmp,sum,cout);

five_bit fb2(sum,d,sum2,cout);


endmodule
