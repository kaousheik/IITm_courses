`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:03 04/01/2019 
// Design Name: 
// Module Name:    decoder_3_to_8 
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
module decoder_3_to_8(
    output reg[0:7] a,
    input out,
    input[0:2] select
    );
always@(a or select)
begin
a = 0;
case(select)
	0: a[7] = out;
	1: a[6] = out;
	2: a[5] = out;
	3: a[4] = out;
	4: a[3] = out;
	5: a[2] = out;
	6: a[1] = out;
	7: a[0] = out;
endcase
end
endmodule
