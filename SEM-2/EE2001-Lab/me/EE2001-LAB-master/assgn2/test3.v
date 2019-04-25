`timescale 1ns/100ps

module test_add;

reg [3:0] x,y;
reg s;
wire [4:0] out;
wire [5:0] c_out;

aors a1(x,y,s,out,c_out);

initial begin

$dumpfile("test_add.vcd");
$dumpvars(0,test_add);

$timeformat(-9,1,"ns",5);

$monitor( "At t=%t, x=%b, y=%b, s=%b, output=%b concatenated_output=%b" , $time , x,y,s, out, c_out);

x = 4'b1101; y=4'b1011; s=1;
#10 x = 4'b0111; y= 4'b0101; s=0; 
#10 x = 4'b1010; y= 4'b0110; s=0;
#10 x = 4'b0111; y= 4'b0101; s=1;
#10 $finish;

end
endmodule
