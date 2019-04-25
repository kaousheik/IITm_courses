module aors(x,y,s,out,c_out);

input [3:0] x,y;
input s;
output [4:0] out;
output [5:0] c_out;
wire [4:0] sum,diff;
wire c_add, c_sub, carry;

addition a1(x,y,sum,c_sum);
subtract s1(x,y,diff,c_sub);

assign out = s ? sum : diff;
assign carry = s ? c_sum : c_sub;

assign c_out = {carry, out};

endmodule
