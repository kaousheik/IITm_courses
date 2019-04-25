module max(a,b,out);

input [3:0] a,b;
output [3:0] out;
reg i,out;
integer j;

always@(a or b)
begin 
i=0;
if(a[3]^b[3]==1)
 if(a[3]==1) begin
  out = b;
  i=1; end
 else begin 
  out = a;
  i=1; end
else begin
 if(a[3]==0)
  for(j=2;j>=0;j=j-1) begin
   if(i==0) 
    if(a[j]^b[j]==1)
     if(a[j]==1) begin 
       out = a;
       i=1; end
     else begin
       out = b;
       i=1; end
  end
 else 
  for(j=2;j>=0;j=j-1) begin
   if(i==0)
    if(a[j]^b[j]==1)
     if(a[j]==0) begin 
       out = b;
       i=1; end
     else begin
       out = a;
       i=1; end
  end
end
if(i==0)
 out=a;

end

endmodule





