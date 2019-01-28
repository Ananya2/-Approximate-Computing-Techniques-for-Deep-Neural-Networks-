`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:24:13 PM
// Design Name: 
// Module Name: fa
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fa(a, b, c, sum, carry);
input a,b,c;
output sum,carry;
wire d,e,f;
xor(sum,a,b,c);
and(d,a,b);
and(e,b,c);
and(f,a,c);
or(carry,d,e,f);
endmodule
