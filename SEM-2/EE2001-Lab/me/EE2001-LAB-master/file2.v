module fa(x,y,z,s,c);

input x,y,z;
output s,c;

wire i1, i2,i3,i4,i5;
assign i1 = x ^ y;
assign s = i1^z;
assign i2 = x & y;
assign i3 = z & y;
assign i4 = x & z;
assign i5 = i2 | i3;
assign c = i5 | i4;

endmodule
