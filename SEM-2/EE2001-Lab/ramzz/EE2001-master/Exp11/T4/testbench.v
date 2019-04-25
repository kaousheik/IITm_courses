module test_max;             //test bench module
reg [3:0] a,b;
output [3:0] out;
max DUT(a,b,out);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,test_max);
$monitor("At time = %t , A = %b , B = %b , Max(A,B) = %b",$time,a,b,out);
#10 a = 4'b0000; b = 4'b0110;
#10 a = 4'b0000; b = 4'b0111;
#10 a = 4'b0100; b = 4'b1000;
#10 a = 4'b0000; b = 4'b1001;
#10 a = 4'b1100; b = 4'b1010;
#10 a = 4'b0000; b = 4'b1011;
#10 a = 4'b1010; b = 4'b1100;
#10 a = 4'b0000; b = 4'b1101;
#10 a = 4'b1000; b = 4'b1110;
#10 a = 4'b0000; b = 4'b1111;
#10 a = 4'b1001; b = 4'b0000;
#10 a = 4'b0001; b = 4'b0001;
#10 a = 4'b0001; b = 4'b0010;
#10 a = 4'b1001; b = 4'b0011;
#10 a = 4'b0001; b = 4'b0100;
#10 a = 4'b0001; b = 4'b0101;
#10 a = 4'b0001; b = 4'b0110;
#10 a = 4'b1001; b = 4'b0111;
#10 a = 4'b0001; b = 4'b1000;
#10 a = 4'b1011; b = 4'b1101;
$finish;
end
endmodule
