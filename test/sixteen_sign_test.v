`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:59:04 PM
// Design Name: 
// Module Name: sixteen_sign_test
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

module sixteen_sign_test;
reg [15:0]a;
reg [15:0]b;
reg clk;
reg asign;
reg bsign;
wire [31:0]m;
wire sign;
sixteen_sign PP(a,b,clk,asign,bsign,m,sign);
initial begin
a=16'b0000000000000011;b=16'b0000000000000001;asign=1'b1;bsign=1'b1;
#1000 a=16'b0000000000001100;b=16'b0000000000001111;asign=1'b1;bsign=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end
endmodule

