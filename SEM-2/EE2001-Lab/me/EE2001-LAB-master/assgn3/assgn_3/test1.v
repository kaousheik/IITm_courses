`timescale 1ns/100ps

module test;

reg i0,i1,i2,i3;
reg [1:0] s;
wire out;

mux m(i0,i1,i2,i3,s,out);

initial 
begin

$timeformat(-9,1,"ns",5);
$monitor( "At t=%t, i0=%b, i1=%b, i2=%b, i3=%b s=%b, out=%b",$time, i0,i1,i2,i3,s,out);

i0=1; i1=0; i2=1; i3=1; s = 2'b11;
#10 i0=1; i1=0; i2=1; i3=1; s = 2'b10;
#10 i0=1; i1=0; i2=1; i3=1; s = 2'b01;
#10 i0=1; i1=0; i2=1; i3=1; s = 2'b00;
#10 $finish;
end

endmodule
