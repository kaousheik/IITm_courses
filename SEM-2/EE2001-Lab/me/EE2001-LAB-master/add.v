module addition(x,y,out,c);

input [3:0] x, y;
wire [4:0] a, b,i;
output [4:0] out;
output c;

assign a[2:0] = x[2:0];
assign a[3] = x[3];
assign a[4] = x[3];

assign b[2:0] = y[2:0];
assign b[3] = y[3];
assign b[4] = y[3];

fiveadd f2(a,b,out,i);
assign c = i[4];

endmodule
