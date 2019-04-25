module test_demux;             //test bench module
reg I;
reg [1:0]s;
output [3:0]out1,out2;
demux1_beh DUT(I,s,out1);
demux1_dat DUT1(I,s,out2);


initial
begin
$dumpfile("test1.vcd");
$dumpvars(0,test_demux);
$monitor("At time = %t , I = %b , s = %b , Behavioural output = %b , Data flow output = %b" ,$time,I,s,out1,out2);
#10 I=1; s=2'b00;      //t=0
#10 I=1; s=2'b01;      //t=10
#10 I=1; s=2'b10;      //t=20
#10 I=1; s=2'b11;      //t=30
#10 $finish;
end
endmodule
