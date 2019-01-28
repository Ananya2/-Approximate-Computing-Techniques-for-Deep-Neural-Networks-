`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:55:01 PM
// Design Name: 
// Module Name: muc_4bittest
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

module muc_4bittest;
reg [3:0]a;
reg [3:0]b;
reg clk;
reg asign;
reg bsign;
wire [7:0]m;
wire sign;
muc_4bit PP(a,b,clk,asign,bsign,m,sign);
initial begin
 a=4'b0011;b=4'b0001;asign=1'b1;bsign=1'b1;
#1000 a=4'b1100;b=4'b1111;asign=1'b1;bsign=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end
endmodule

