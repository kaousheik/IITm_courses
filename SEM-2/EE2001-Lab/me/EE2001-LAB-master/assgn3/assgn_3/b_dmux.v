module dmux(i0,i1,i2,i3,s,d);

output i0,i1,i2,i3;
input [1:0] s;
input d;
reg i0,i1,i2,i3;

always@(s or d)
begin 
i0=0; 
i1=0; 
i2=0; 
i3=0;
if(s==0)
 i0=d;
else if(s==1)
 i1=d;
else if(s==2)
 i2=d;
else if(s==3)
 i3=d;
end

endmodule
 
