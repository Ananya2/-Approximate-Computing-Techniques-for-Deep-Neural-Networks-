`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 02:00:28 PM
// Design Name: 
// Module Name: test_mux
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


module test_mux();
wire y;
reg s;
reg i,j;
mux pp(y,s,i,j);
initial 
begin
#10 j=1'b1;i=1'b0; s=1'b0;
#10 j=1'b1;i=1'b1; s=1'b0;
#10 j=1'b1;i=1'b1; s=1'b1;
end
endmodule
