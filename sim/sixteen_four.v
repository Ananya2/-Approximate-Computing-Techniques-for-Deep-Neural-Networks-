`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 05:44:31 PM
// Design Name: 
// Module Name: sixteen_four
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


module sixteen_four(a,b,clk,m);
    input [15:0] a;
    input [3:0] b;
    input clk;
    output [19:0] m;
    wire [17:0]x;
    wire [17:0]y;
 sixteen_two PP(a,b[1:0],clk,x[17:0]);
 sixteen_two OO(a,b[3:2],clk,y[17:0]);
 buf(m[0],x[0]);
 buf(m[1],x[1]);
 wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18;
 hal hh1(x[2],y[0],m[2],c1);
 fa ff1(x[3],y[1],c1,m[3],c2);
 fa ff2(x[4],y[2],c2,m[4],c3);
 fa ff3(x[5],y[3],c3,m[5],c4);
 fa ff4(x[6],y[4],c4,m[6],c5);
 fa ff5(x[7],y[5],c5,m[7],c6);
 fa ff6(x[8],y[6],c6,m[8],c7);
 fa ff7(x[9],y[7],c7,m[9],c8);
 fa ff8(x[10],y[8],c8,m[10],c9);
 fa ff9(x[11],y[9],c9,m[11],c10);
 fa ff10(x[12],y[10],c10,m[12],c11);
 fa ff11(x[13],y[11],c11,m[13],c12);
  fa ff12(x[14],y[12],c12,m[14],c13);
  fa ff13(x[15],y[13],c13,m[15],c14);
  fa ff14(x[16],y[14],c14,m[16],c15);
  fa ff15(x[17],y[15],c15,m[17],c16);
  hal hh2(y[16],c16,m[18],c17);
  hal hh3(y[17],c17,m[19],c18);
   
         
endmodule
