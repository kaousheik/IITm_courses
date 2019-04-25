module dmux(i0,i1,i2,i3,s,d);

output i0,i1,i2,i3;
input [1:0] s;
input d;

assign i0 = (s==0)?d:0;
assign i1 = (s==1)?d:0;
assign i2 = (s==2)?d:0;
assign i3 = (s==3)?d:0;

endmodule
