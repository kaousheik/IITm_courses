module up_counter(input x,clk,reset,output[1:0] counter);
reg [1:0] counter_up,D,Dprev;
initial D=2'b0;
always @(posedge clk or posedge reset)
begin
Dprev = D;
D[1] = (Dprev[1] & ~x )+(Dprev[0] & x);
D[0] = (Dprev[0] & ~x )+(~Dprev[1] & x); 
if(reset)
 counter_up = 2'b0;
else if(x)
 counter_up = D; 
else
 counter_up = counter_up;
end
assign counter = counter_up;
endmodule
