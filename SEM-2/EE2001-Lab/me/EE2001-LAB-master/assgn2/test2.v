`timescale 1ns/100ps

module test;

reg [4:0] x,y;
wire [4:0] sum,carry;

fiveadd fun(x,y,sum,carry);

initial begin

$timeformat(-9,1,"ns",5);
$monitor( "At t=%t, x=%b, y=%b, sum=%b, carry=%b" , $time , x,y, sum, carry[4] );

x = 4'b1001; y = 4'b1100;
#10 x = 5'b11101; y = 5'b11101;
#10 x = 5'b11011; y = 5'b11110;
#10 $finish;

end
endmodule
