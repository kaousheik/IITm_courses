`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:55 04/02/2019
// Design Name:   up_down_counter
// Module Name:   D:/Lab_2019_Exp11/up_down_count.v
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

module up_down_count;

	// Inputs
	reg reset;
	reg reset1;
	reg s;
	// Outputs
	wire [2:0] out;
	
	reg c;
	// Outputs
	wire [24:0] count;
	wire clk_out;
	
	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.out(out), 
		.reset(reset), 
		.s(s)
	);
	OneHzClk hello(c,clk_out);
		always
		#10 c=~c;
	initial begin
		// Initialize Inputs
		reset = 1;
		s = 0;
		c = 0;
		#10;
		reset=0;
		// Wait 100 ns for global reset to finish
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
      s=1;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
		#1410065408;
      s=0;
		// Add stimulus here

	end
      
endmodule

