`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:26:38 PM
// Design Name: 
// Module Name: muc_4bit
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

module muc_4bit(a, b,clk, asign, bsign, m, sign);
input [3:0]a;
input [3:0]b;
input clk;
input asign;
input bsign;
output [7:0]m;
output sign;
wire s1,s2,s3,s4;
wire [3:0]f1;
wire [3:0]f2;
wire [3:0]f3;
wire [3:0]f4;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,s12;
muc_new p1(a[1:0],b[1:0],clk,0,0,f1[3:0],s1);
muc_new p2(a[3:2],b[1:0],clk,0,0,f2[3:0],s2);
muc_new p3(a[1:0],b[3:2],clk,0,0,f3[3:0],s3);
muc_new p4(a[3:2],b[3:2],clk,0,0,f4[3:0],s4);
buf(m[0],f1[0]);
buf(m[1],f1[1]);
wire v1,v2,v3,v4,v5,v6;
fa ff1(f2[0],f3[0],f1[2],m[2],c1);
fa ff2(f2[1],f3[1],f1[3],v1,c2);
hal hh5(v1,c1,m[3],c3);
hal hh6(c2,c3,c4,c5); 
fa ff3(f2[2],f3[2],f4[0],v2,c6);
hal hh7(v2,c4,m[4],c7);
hal hh8(c6,c7,c8,c9); 
fa ff4(f2[3],f3[3],f4[1],v3,c10);
fa ff5(v3,c5,c8,m[5],c11);
hal hh9(c10,c11,c12,c13);
fa ff6(f4[2],c9,c12,m[6],c14);
fa ff7(f4[3],c13,c14,m[7],s12);

xor (sign,asign,bsign);
endmodule
