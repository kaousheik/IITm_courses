`timescale 1ns/100ps

module test;

reg [3:0] a,b;
wire [3:0] out;

max m(a,b,out);

initial 
begin

$timeformat(-9,1,"ns",5);
$monitor( "At t=%t, a=%b,b=%b,max=%b",$time, a,b,out);

a=4'b0011; b=4'b0111;
#10 a=4'b1100; b=4'b1011;
#10 a=4'b1100; b=4'b0100;
#10 $finish;

end
endmodule

