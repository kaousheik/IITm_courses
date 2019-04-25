`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:24 04/02/2019 
// Design Name: 
// Module Name:    up_down_counter 
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
module up_down_counter(
	 output reg [24:0] count,
    output reg [2:0] out,
	 output reg clk_out,
	 input reset,
	 input reset1,
	 input s,
	 input c
    );
	 
always@(negedge c)
begin
	if(reset)
		begin
		count <= 0;
		clk_out <=1;
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
always@(negedge clk_out)
begin
	if(reset1)
		begin
		out <= 0;
		end
	else begin
		if(s)
		begin
		out <=out+1;
		end
	else
		begin
		out <= out-1;
		end
	end
end
endmodule
