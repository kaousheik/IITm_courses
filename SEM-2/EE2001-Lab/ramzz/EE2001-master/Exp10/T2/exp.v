module five_bit(a,b,c,s,cout);

input [4:0] a,b;
output [4:0] s,c;
output cout;

ha b1(a[0],b[0],s[0],c[1]);
fa b2(a[1],b[1],c[1],s[1],c[2]);
fa b3(a[2],b[2],c[2],s[2],c[3]);
fa b4(a[3],b[3],c[3],s[3],c[4]);
fa b5(a[4],b[4],c[4],s[4],cout);

endmodule
