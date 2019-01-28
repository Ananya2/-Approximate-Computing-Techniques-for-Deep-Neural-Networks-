`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:58:21 PM
// Design Name: 
// Module Name: sixteen_one_test
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
module sixteen_one_test;
reg [15:0]a;
reg b;
reg clk;
wire [15:0]p;
sixteen_one PP(a,b,clk,p);
initial begin
a=16'b1111000000000011;b=1'b1;
#1000 a=16'b1111000000001101;b=1'b1;
end
initial 
begin
clk=1'b1;
forever #100 clk=~clk;
end

endmodule
