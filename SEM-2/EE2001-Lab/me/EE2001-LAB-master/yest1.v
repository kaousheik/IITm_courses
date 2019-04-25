`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:27 04/01/2019
// Design Name:   clk_divide
// Module Name:   D:/EE5331_AN/clk_divide/yest1.v
// Project Name:  clk_divide
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_divide
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module yest1;

	// Inputs
	reg c;
	reg reset;

	// Outputs
	wire o;
	wire [25:0] count;

	// Instantiate the Unit Under Test (UUT)
	clk_divide uut (
		.c(c), 
		.o(o), 
		.count(count), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		c = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

