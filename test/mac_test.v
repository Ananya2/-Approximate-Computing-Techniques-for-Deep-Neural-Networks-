`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:48:07 PM
// Design Name: 
// Module Name: mac_test
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
module mac_test;
reg [15:0]a;
reg [15:0]b;
reg [31:0]c;
reg clk;
reg asign;
reg bsign;
reg csign;
wire [32:0]m;
wire sign;
mac PP(a,b,c,clk,asign,bsign,csign,m,sign);
initial begin
a=16'b0000000000000011;b=16'b0000000000000001;c=32'b10101010101010101010101010101010;asign=1'b1;bsign=1'b1;csign=1'b1;
#1000 a=16'b0000000000001100;b=16'b0000000000001111;c=32'b10101010101010101010101111101010;asign=1'b1;bsign=1'b1;csign=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end
endmodule

