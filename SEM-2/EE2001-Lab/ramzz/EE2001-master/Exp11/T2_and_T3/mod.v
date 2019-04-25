module demux1_beh(I,s,out);
input I;
input [1:0] s;
output [3:0] out;
reg [3:0] out;

always@(I or s or out)
begin
if(s==0)
  out=4'b0001;
else if(s==1)
  out=4'b0010;
else if(s==2)
  out=4'b0100;
else if(s==3)
  out=4'b1000;
end


endmodule

module demux1_dat(I,s,out);
input I;
input [1:0] s;
output [3:0] out;

assign out = (s==0)?4'b0001:
             (s==1)?4'b0010:
             (s==2)?4'b0100:
             (s==3)?4'b1000:4'b0000;

endmodule
