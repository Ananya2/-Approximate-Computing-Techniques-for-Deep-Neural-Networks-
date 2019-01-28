`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:56:35 PM
// Design Name: 
// Module Name: mul_1bittest
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

module mul_1bittest;
reg a;
reg b;
reg clk;
wire p;
mul_1bit FF(a,b,clk,p);
initial begin
 a=1'b1;b=2'b0;
#1000 a=2'b1;b=2'b1;
end
initial 
begin
clk=1'b1;
forever #50 clk=~clk;
end
endmodule
