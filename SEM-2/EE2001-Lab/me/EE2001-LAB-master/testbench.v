`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:57:59 04/01/2019
// Design Name:   mod
// Module Name:   D:/EE5331_AN/dec38/testbench.v
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

module testbench;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg [3:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mod uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#10 i0=1; i1=1; i2=1; i3=1; i4=0; i5=0; i6=0; i7=0; s=3'b101;
		#10 s=3'b000;
		#10 s=3'b111;
        
		// Add stimulus here

	end
      
endmodule

