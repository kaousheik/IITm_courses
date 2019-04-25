`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:22 04/01/2019
// Design Name:   decoder_3_to_8
// Module Name:   D:/Lab_2019_Exp11/Test_module.v
// Project Name:  Lab_2019_Exp11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_3_to_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_module;

	// Inputs
	wire [0:7] a;
	reg [0:2] select;

	// Outputs
	reg out;

	// Instantiate the Unit Under Test (UUT)
	decoder_3_to_8 uut (
		.a(a), 
		.out(out), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		out = 1;
		select = 7;

		// Wait 100 ns for global reset to finish
		#100;
      select = 1;
		#100
		select = 4;
		#100
		select = 3;
		// Add stimulus here

	end
      
endmodule

