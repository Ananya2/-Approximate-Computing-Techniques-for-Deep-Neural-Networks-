`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:27:33 PM
// Design Name: 
// Module Name: eight_sign
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
module eight_sign(a,b,clk,asign,bsign,m,sign);
    input [7:0] a;
    input [7:0] b;
    input clk;
    input asign;
    input bsign;
    output [15:0] m;
    output sign;
    wire s1,s2,s3,s4;
    wire [7:0]f1;
    wire [7:0]f2;
    wire [7:0]f3;
    wire [7:0]f4;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,s12;
    muc_4bit p1(a[3:0],b[3:0],clk,0,0,f1[7:0],s1);
    muc_4bit p2(a[7:4],b[3:0],clk,0,0,f2[7:0],s2);
    muc_4bit p3(a[3:0],b[7:4],clk,0,0,f3[7:0],s3);
    muc_4bit p4(a[7:4],b[7:4],clk,0,0,f4[7:0],s4);
    buf(m[0],f1[0]);
    buf(m[1],f1[1]);
    buf(m[2],f1[2]);
    buf(m[3],f1[3]);
    wire v1,v2,v3,v4,v5,v6,v7,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32;
    
    fa ff1(f1[4],f2[0],f3[0],m[4],c1);
    
    fa ff2(f1[5],f2[1],f3[1],v1,c2);
    hal hh1(v1,c1,m[5],c3);
    hal hh2(c2,c3,c4,c5);
    
    fa ff3(f2[2],f1[6],f3[2],v2,c6);
    hal hh3(v2,c4,m[6],c7);
    hal hh4(c6,c7,c8,c9);
    
    fa ff4(f2[3],f3[3],f1[7],v3,c10);
    fa ff5(v3,c5,c8,m[7],c11);
    hal hh5(c10,c11,c12,c13);
    
    fa ff6(f2[4],f4[0],f3[4],v4,c14);
    fa ff7(v4,c9,c12,m[8],c15);
    hal hh6(c14,c15,c16,c17);
    
    fa ff8(f2[5],f4[1],f3[5],v5,c18);
    fa ff9(v5,c13,c16,m[9],c19);
    hal hh7(c18,c19,c20,c21);
    
     fa ff10(f2[6],f4[2],f3[6],v6,c22);
     fa ff11(v6,c17,c20,m[10],c23);
     hal hh8(c22,c23,c24,c25);
       
     fa ff12(f2[7],f4[3],f3[7],v7,c26);
     fa ff13(v7,c21,c24,m[11],c27);
     hal hh9(c26,c27,c28,c29);
          
     fa ff14(f4[4],c25,c28,m[12],c30);
     fa ff15(c30,c29,f4[5],m[13],c31);
     hal hh10(c31,f4[6],m[14],c32);
     
     buf(m[15],c32);
             
     xor(sign,asign,bsign);
endmodule
