`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:34 04/01/2019 
// Design Name: 
// Module Name:    two_bit_mul 
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
module two_bit_mul(
    input [0:1] a,
    input [0:1] b,
    output reg [0:3] out
    );
always@(a or b)
begin
out[3] = (b[1] & a[1]);
out[2] = (b[0] & a[1]) ^ (a[0] & b[1]);
out[1] = ((b[0] & a[1]) & (a[0] & b[1])) ^ (a[0] & b[0]);
out[0] = ((b[0] & a[1]) & (a[0] & b[1])) & (a[0] & b[0]);
end
endmodule
