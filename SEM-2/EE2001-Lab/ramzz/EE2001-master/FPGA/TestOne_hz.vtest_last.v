`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:46:38 04/03/2019
// Design Name:   up_down_counter
// Module Name:   D:/Lab/Lab_2019_Exp11/test_last.v
// Project Name:  Lab_2019_Exp11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_last;

	// Inputs
	reg reset;
	reg reset1;
	reg s;
	reg c;

	// Outputs
	wire [24:0] count;
	wire [2:0] out;
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.count(count), 
		.out(out), 
		.clk_out(clk_out), 
		.reset(reset),
		.reset1(reset1),
		.s(s), 
		.c(c)
	);
	   always
		#10 c=~c;
	initial begin
		// Initialize Inputs
		s = 0;
		c = 0;
		reset = 1;
		#100;
		reset =0;
		reset1=1;
		#1000000000;
      reset1=0;
		// Add stimulus here

	end
      
endmodule

