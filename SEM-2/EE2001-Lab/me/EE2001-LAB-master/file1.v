module fa(x,y,z,s,c);

input x,y,z;
output s,c;
wire i1,i2,i3,i4;

xor x1(s,x,y,z);
and a1(i1,x,y);
and a2(i2,z,y);
and a3(i3,x,z);
or a4(i4,i1,i2);
or a5(c, i4,i3);

endmodule
