module test_mux;             //test bench module
reg [3:0]I;
reg [1:0]s;
output out1,out2;
mux4_dat DUT(I,s,out2);
mux4_beh DUT1(I,s,out1);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,test_mux);
$monitor("At time = %t, I = %b, s = %b, out_beh = %b, out_dat = %b" ,$time,I,s,out1,out2);

#10 I = 4'b0001; s = 2'b00;
#10 I = 4'b0010; s = 2'b01;
#10 I = 4'b0011; s = 2'b10;
#10 I = 4'b0100; s = 2'b11;
#10 I = 4'b0111; s = 2'b00;

#10 $finish;
end
endmodule
