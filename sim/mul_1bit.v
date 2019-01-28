`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:21:22 PM
// Design Name: 
// Module Name: mul_1bit
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

module mul_1bit(a,b,clk,p);
input a;
input b;
input clk;
output reg p;
wire m;
wire h1,h2,h3,h4;

mux M1(m,a,b,0);

always @(posedge clk)
begin
p<=m;
end

endmodule

