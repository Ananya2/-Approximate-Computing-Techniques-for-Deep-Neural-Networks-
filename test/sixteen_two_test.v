`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:59:47 PM
// Design Name: 
// Module Name: sixteen_two_test
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

module sixteen_two_test;
reg [15:0]a;
reg [1:0]b;
reg clk;
wire [17:0]m;
sixteen_two PP(a,b,clk,m);
initial begin
a=16'b1111000000000011;b=2'b11;
#1000 a=16'b1111000000001101;b=2'b11;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end

endmodule