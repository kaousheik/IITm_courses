module test_fa;
wire s1,s2,cout1,cout2;
reg a,b,c;
fa_data DUT(a,b,c,s1,cout1);
fa_gate DUT1(a,b,c,s2,cout2);
initial
begin
$dumpfile("testfadd.vcd");
$dumpvars(0,test_fa);
$monitor("At time = %t , a = %b , b = %b , Carry in = %b, s_data = %b , cout_data = %b , s_gate = %b , cout_gate = %b",$time,a,b,c,s1,cout1,s2,cout2);
#10 a = 0; b = 0; c = 0;
#10 a = 0; b = 0; c = 1;
#10 a = 0; b = 1; c = 0;
#10 a = 0; b = 1; c = 1;
#10 a = 1; b = 0; c = 0;
#10 a = 1; b = 0; c = 1;
#10 a = 1; b = 1; c = 0;
#10 a = 1; b = 1; c = 1;
#10 $finish;
end
endmodule
