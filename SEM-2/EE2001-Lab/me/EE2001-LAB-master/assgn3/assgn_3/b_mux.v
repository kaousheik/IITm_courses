module mux(i0,i1,i2,i3,s,out);

input [1:0] s;
input i0,i1,i2,i3;
output out;
reg out;

always@(i0 or i1 or i2 or i3 or s)
begin 
if(s==0)
 out = i0;

else if(s==1)
 out = i1;

else if(s==2)
 out = i2;

else if(s==3)
 out = i3;

end

endmodule

