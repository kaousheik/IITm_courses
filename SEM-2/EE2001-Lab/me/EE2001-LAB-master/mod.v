`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:33 04/01/2019 
// Design Name: 
// Module Name:    mod 
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
module mod(i,s);
output[7:0] i;
input[3:0] s;
reg[7:0] i;

always @ (s) begin
i = 8'b00000000;
case(s)
0: i[0]=1;
1: i[1]=1;
2: i[2]=1;
3: i[3]=1;
4: i[4]=1;
5: i[5]=1;
6: i[6]=1;
7: i[7]=1; 
endcase
end
endmodule
