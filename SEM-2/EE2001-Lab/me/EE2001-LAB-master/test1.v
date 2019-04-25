`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:55:59 04/01/2019
// Design Name:   mod
// Module Name:   D:/EE5331_AN/dec38/test1.v
// Project Name:  dec38
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg [3:0] s;

	// Outputs
	wire [7:0] i;

	// Instantiate the Unit Under Test (UUT)
	mod uut (
		.i(i), 
		.s(s), 
	);

	initial begin
		// Initialize Inputs
		s = 0;

		// Wait 100 ns for global reset to finish
		#10 s=3'b101;
        
		// Add stimulus here

	end
      
endmodule

