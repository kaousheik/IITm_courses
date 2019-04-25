module upcounter_testbench();
reg clk, reset, x;
wire [1:0] counter;
up_counter dut(x, clk, reset, counter);
initial begin
$dumpfile("test_add.vcd");
$dumpvars(0,upcounter_testbench);
x = 0;
clk=0;
reset = 0;
$monitor( "At t=%t, output=%b,x = %b , reset = %b" , $time ,counter,x,reset);
end
always #5 clk = ~clk;
initial begin
x=1;
reset=1;
#10;reset=0;
#10;x=0;
#10;x=1;
#10;x=0;
#10;x=1;
#80;x=0;
$finish;
end
endmodule
