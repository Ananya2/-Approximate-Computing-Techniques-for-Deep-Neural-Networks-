`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:31:02 PM
// Design Name: 
// Module Name: sixteen_one
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
module sixteen_one(a,b,clk,p);
    input [15:0] a;
    input b;
    input clk;
    output reg [15:0]p;
    wire [15:0]m;
    and(m[0],b,a[0]);
    and(m[1],b,a[1]);
    and(m[2],b,a[2]);
    and(m[3],b,a[3]);      
   and(m[4],b,a[4]);
   and(m[5],b,a[5]);
   and(m[6],b,a[6]);
   and(m[7],b,a[7]);
   and(m[8],b,a[8]);
   and(m[9],b,a[9]);
   and(m[10],b,a[10]);
   and(m[11],b,a[11]);
   and(m[12],b,a[12]);
   and(m[13],b,a[13]);
   and(m[14],b,a[14]);
   and(m[15],b,a[15]);
   always @(posedge clk)
   begin
   p[0]<=m[0];
   p[1]<=m[1];
   p[2]<=m[2];
   p[3]<=m[3];
   p[4]<=m[4];
   p[5]<=m[5];p[6]<=m[6];
   p[8]<=m[8];p[7]<=m[7];
   p[9]<=m[9];
      p[10]<=m[10];
      p[11]<=m[11];
      p[12]<=m[12];
      p[13]<=m[13];
      p[14]<=m[14];p[15]<=m[15];   
   
   end
 endmodule
