module mux4_beh(I,s,out);
input [3:0]I;
input [1:0]s;
output out;
reg out;

always@(I or s or out)
begin
if(s==0)
  out=I[0];
else if(s==1)
  out=I[1];
else if(s==2)
  out=I[2];
else if(s==3)
  out=I[3];
end

endmodule

module mux4_dat(I,s,out);
input [3:0]I;
input [1:0]s;
output out;

assign out = (s==0)?I[0]:
             (s==1)?I[1]:
             (s==2)?I[2]:
             (s==3)?I[3]:1'bx;

endmodule
