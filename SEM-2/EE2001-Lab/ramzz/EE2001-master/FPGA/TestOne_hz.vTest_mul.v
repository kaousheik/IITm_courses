`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:22 04/01/2019
// Design Name:   two_bit_mul
// Module Name:   D:/Lab_2019_Exp11/Test_mul.v
// Project Name:  Lab_2019_Exp11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_mul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_mul;

	// Inputs
	reg [0:1] a;
	reg [0:1] b;

	// Outputs
	wire [0:3] out;

	// Instantiate the Unit Under Test (UUT)
	two_bit_mul uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
      a=3;
		b=3;
		#100;
		a=2;
		#100;
		a=1;
		#100
		a=0;
		#100;
      a=3;
		b=2;
		#100;
		a=2;
		#100;
		a=1;
		#100
		a=0;
		#100;
      a=3;
		b=1;
		#100;
		a=2;
		#100;
		a=1;
		#100
		a=0;
		#100;
      a=3;
		b=0;
		#100;
		a=2;
		#100;
		a=1;
		#100
		a=0;
		// Add stimulus here

	end
      
endmodule

