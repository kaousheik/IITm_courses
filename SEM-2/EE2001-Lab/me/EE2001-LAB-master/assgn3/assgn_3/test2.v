`timescale 1ns/100ps

module test;

wire i0,i1,i2,i3;
reg [1:0] s;
reg d;

dmux m(i0,i1,i2,i3,s,d);

initial 
begin

$timeformat(-9,1,"ns",5);
$monitor( "At t=%t, s=%b, d=%d, i0=%b, i1=%b, i2=%b, i3=%b",$time, s,d,i0,i1,i2,i3);

s=2'b00; d=1;
#10 s=2'b01; d=1;
#10 s=2'b10; d=0;
#10 s=2'b11; d=0;
#10 $finish;

end 

endmodule
