`timescale 1ns/100ps


module or1;

reg a,b,c;
wire sum,carry;
fa f1(a,b,c,sum, carry);

initial 
begin

$dumpfile("test.vcd");
$dumpvars(0,or1);

$timeformat(-9,1,"ns",5);
$monitor( "At t=%t, x=%b, y=%b, z=%b sum=%b carry=%b" , $time , a , b, c, sum, carry );

a=1; b=1; c=1;

#10 a=1; b=0; c=0;
#10 a=0; b=1; c=1;
#10 $finish;

end
endmodule



