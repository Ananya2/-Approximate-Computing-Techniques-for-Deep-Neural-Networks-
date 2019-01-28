`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:35:47 PM
// Design Name: 
// Module Name: eight_sign_test
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

module eight_sign_test;
reg [7:0]a;
reg [7:0]b;
reg clk;
reg asign;
reg bsign;
wire [15:0]m;
wire sign;
eight_sign PP(a,b,clk,asign,bsign,m,sign);
initial begin
a=8'b00000011;b=8'b00000001;asign=1'b1;bsign=1'b1;
#1000 a=8'b00001100;b=8'b00001111;asign=1'b1;bsign=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end
endmodule