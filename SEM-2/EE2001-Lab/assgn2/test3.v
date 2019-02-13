module test_add;

reg [3:0] x,y;
wire [4:0] a,b,b_comp,i1,i2,i3,sum,diff;

sgn_ext s1(x,y,a,b);
fiveadd f1(~b,5'b00001,b_comp,i1);
fiveadd f2(a,b,sum,i2);
fiveadd f3(a,b_comp,diff,i3);

initial begin

$dumpfile("test_add.vcd");
$dumpvars(0,test_add);

$monitor( "At t=%t, x=%b, y=%b, sum=%b, diff=%b" , $time , x,y,sum, diff);

x = 4'b1101; y=4'b1011;
#10 x = 4'b0111; y= 4'b0101;
#10 $finish;


end
endmodule
