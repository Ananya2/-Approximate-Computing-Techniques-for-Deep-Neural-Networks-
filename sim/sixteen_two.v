`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:31:48 PM
// Design Name: 
// Module Name: sixteen_two
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
module sixteen_two(a,b,clk,m);
    input [15:0] a;
    input [1:0]b;
    input clk;
    output [17:0]m;
    wire [15:0]x;
    wire [15:0]y;
    sixteen_one p1(a,b[0],clk,x);
    sixteen_one p2(a,b[1],clk,y);
    buf (m[0],x[0]);
    hal hh1(x[1],y[0],m[1],c1);
    fa ff1(x[2],y[1],c1,m[2],c2);
    fa ff2(x[3],y[2],c2,m[3],c3);
    fa ff3(x[4],y[3],c3,m[4],c4);
    fa ff4(x[5],y[4],c4,m[5],c5);
    fa ff5(x[6],y[5],c5,m[6],c6);
    fa ff6(x[7],y[6],c6,m[7],c7);
    fa ff7(x[8],y[7],c7,m[8],c8);
    fa ff8(x[9],y[8],c8,m[9],c9);
    fa ff9(x[10],y[9],c9,m[10],c10);
    fa ff10(x[11],y[10],c10,m[11],c11);
    fa ff11(x[12],y[11],c11,m[12],c12);
    fa ff12(x[13],y[12],c12,m[13],c13);
    fa ff13(x[14],y[13],c13,m[14],c14);
    fa ff14(x[15],y[14],c14,m[15],c15);
    hal hh2 (y[15],c15,m[16],m[17]); 
    
    endmodule

