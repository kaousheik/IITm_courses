module max(a,b,out);
input [3:0] a,b;
output [3:0] out;
reg [3:0] wi;
output cout;
sub s1(a,b,cout);

always@(a or b or out or cout)
begin
if(cout==0)
  wi=a;
else if(cout==1)
  wi=b;
end

assign out = wi;

endmodule
