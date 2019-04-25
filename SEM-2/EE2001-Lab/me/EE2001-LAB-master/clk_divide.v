`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:29 04/01/2019 
// Design Name: 
// Module Name:    clk_divide 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_divide(c,o,count,reset);
input c,reset;
output reg o;
output reg [24:0] count;

always @ (negedge c)
begin
if(reset)
 begin
  count <= 0;
  o<=0;
 end
 else begin
  if(count==25'd25000000)
  begin
   o <= ~o;
	count <=25'd0;
  end
  else
  begin  
  count <= count + 1;
  end
 end
end

endmodule
