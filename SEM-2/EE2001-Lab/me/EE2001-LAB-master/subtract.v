module subtract(x,y,out,c);

input [3:0] x, y;
output [4:0] out;
output c;
wire [4:0] a,b,b_comp,i1,i2;

assign a[2:0] = x[2:0];
assign a[3] = x[3];
assign a[4] = x[3];

assign b[2:0] = y[2:0];
assign b[3] = y[3];
assign b[4] = y[3];

fiveadd f1(~b,5'b00001,b_comp,i1);
fiveadd f3(a,b_comp,out,i2);
assign c = i2[4];

endmodule
