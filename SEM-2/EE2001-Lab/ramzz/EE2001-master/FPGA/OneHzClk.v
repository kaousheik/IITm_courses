`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:04 01/01/2012 
// Design Name: 
// Module Name:    OneHzClk 
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
module OneHzClk(
    input c,
    input reset1,
    output reg [24:0] count,
    output reg clk_out
    );
always@(negedge c)
begin
	if(reset1)
		begin
		count <= 0;
		clk_out <=0;
		end
	else begin
		if(count == 25000000)
		begin
		count <=0;
		clk_out <= ~clk_out;
		end
	else
		begin
		count <= count+1;
		end
	end
end
endmodule
