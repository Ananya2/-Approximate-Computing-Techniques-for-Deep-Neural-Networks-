`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:20:12 PM
// Design Name: 
// Module Name: muc_new
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


module muc_new(a, b, clk, asign, bsign, m, sign);
input [1:0]a;
input [1:0]b;
input clk;
input asign;
input bsign;
output  [3:0]m;
output sign;
wire h1,h2,h3,h4;

mul_1bit M1(a[0],b[0],clk,m[0]);
mul_1bit M2(a[0],b[1],clk,h1);
mul_1bit M3(b[0],a[1],clk,h2);
mul_1bit M4(b[1],a[1],clk,h3);
hal hh(h1,h2,m[1],h4);
hal hhh(h4,h3,m[2],m[3]);

xor(sign,asign,bsign);
endmodule
