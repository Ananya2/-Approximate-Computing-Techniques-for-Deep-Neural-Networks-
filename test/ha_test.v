`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:36:45 PM
// Design Name: 
// Module Name: ha_test
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


module ha_test;
reg a,b;
wire s,c;
hal h1(a,b,s,c);
initial begin
#1000 a=1'b1;b=1'b1;
#1000 a=1'b0;b=1'b0;
end
endmodule

