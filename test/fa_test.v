`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:34:37 PM
// Design Name: 
// Module Name: fa_test
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

module fa_test;
reg a,b,c;
wire sum,carry;
fa uut (a,b,c,sum,carry);
initial begin
#10 a=1'b1;b=1'b1;c=1'b1;
#10 a=1'b1;b=1'b1;c=1'b1;
end
endmodule
