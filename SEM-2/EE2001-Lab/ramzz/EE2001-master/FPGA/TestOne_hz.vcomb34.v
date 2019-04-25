`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:11 04/02/2019 
// Design Name: 
// Module Name:    comb34 
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
    input reset,
    output reg [24:0] count,
    output reg clk_out
    );
always@(negedge c)
begin
	if(reset)
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


module up_down_counter(
    output reg [2:0] out,
	 input reset,
	 input s,
    input clk_out
    );
OneH	 
always@(negedge clk_out)
begin
	if(reset)
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

