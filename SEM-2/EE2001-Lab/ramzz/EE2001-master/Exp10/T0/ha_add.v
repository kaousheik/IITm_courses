module ha_gate(a , b, sum , carry);

input a,b;
output sum,carry;

xor x1 (sum , a ,b ) ;
and a1 ( carry , a , b ) ;

endmodule

module ha_data(a,b,sum,carry);

input a,b;
output sum,carry;

assign sum = a ^ b;
assign carry = a & b;

endmodule
