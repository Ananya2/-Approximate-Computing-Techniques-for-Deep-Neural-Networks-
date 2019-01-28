`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:55:43 PM
// Design Name: 
// Module Name: muc_newtest
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

module muc_newtest;
reg [1:0]a;
reg [1:0]b;
reg clk;
reg asign;
reg bsign;
wire [3:0]p;
wire sign;
muc_new FF(a,b,clk,asign,bsign,p,sign);
initial begin
 a=2'b11;b=2'b01;asign=1'b0;bsign=1'b1;
#1000 a=2'b11;b=2'b11;asign=1'b1;bsign=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end
endmodule
