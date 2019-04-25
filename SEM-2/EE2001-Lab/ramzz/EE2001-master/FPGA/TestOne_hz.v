`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:19 01/01/2012
// Design Name:   OneHzClk
// Module Name:   D:/Lab_2019_Exp11/TestOne_hz.v
// Project Name:  Lab_2019_Exp11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OneHzClk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestOne_hz;

	// Inputs
	reg c;
	reg reset;

	// Outputs
	wire [24:0] count;
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	OneHzClk uut (
		.c(c), 
		.reset(reset), 
		.count(count), 
		.clk_out(clk_out)
	);

      always
		#10 c=~c;

	initial begin
		// Initialize Inputs
		c = 0;
		reset = 1;
		#1
		reset =0;
		// Wait 100 ns for global reset to finis
	
		// Add stimulus here

	end
      
endmodule

