module test_ha;             //test bench module
wire s,c;                   //outputs from half adder
reg a,b;                    //inputs to the half adder module
ha_data DUT(a,b,s,c);       //instantiate the device under test (half adder)
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,test_ha);
$monitor("At time = %t,a = %b,b = %b,s = %b,c = %b",$time,a,b,s,c);
a=1;b=1;            //t=0
#10 a=1;b=0;        //t=10
#10 a=0;b=1;        //t=20
#10 a=0;b=0;
#10 $finish;
end
endmodule
