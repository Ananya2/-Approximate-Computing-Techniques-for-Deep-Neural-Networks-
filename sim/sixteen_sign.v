`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2018 01:28:16 PM
// Design Name: 
// Module Name: sixteen_sign
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

module sixteen_sign(a,b,clk,asign,bsign,m,sign);
    input [15:0] a;
    input [15:0] b;
    input clk;
    input asign;
    input bsign;
    output [31:0] m;
    output sign;
    wire s1,s2,s3,s4;
    wire [15:0]f1;
    wire [15:0]f2;
    wire [15:0]f3;
    wire [15:0]f4;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,s12;
    eight_sign p1(a[7:0],b[7:0],clk,0,0,f1[15:0],s1);
    eight_sign p2(a[15:8],b[7:0],clk,0,0,f2[15:0],s2);
    eight_sign p3(a[7:0],b[15:8],clk,0,0,f3[15:0],s3);
    eight_sign p4(a[15:8],b[15:8],clk,0,0,f4[15:0],s4);
    buf(m[0],f1[0]);
    buf(m[1],f1[1]);
    buf(m[2],f1[2]);
    buf(m[3],f1[3]);
    buf(m[4],f1[4]);
    buf(m[5],f1[5]);
    buf(m[6],f1[6]);
    buf(m[7],f1[7]);
    
    wire v1,v2,v3,v4,v5,v6,v7,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38;
    wire c39,c40,c41,c42,c43,c44,c45,c46,c47,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63,c64,c65,c66,c67,c68,c69;
    
    fa ff1(f1[8],f2[0],f3[0],m[8],c1);
    
    fa ff2(f1[9],f2[1],f3[1],v1,c2);
    hal hh1(v1,c1,m[9],c3);
    hal hh2(c2,c3,c4,c5);
    
    fa ff3(f2[2],f1[10],f3[2],v2,c6);
    hal hh3(v2,c4,m[10],c7);
    hal hh4(c6,c7,c8,c9);
    
    fa ff4(f2[3],f3[3],f1[11],v3,c10);
    fa ff5(v3,c5,c8,m[11],c11);
    hal hh5(c10,c11,c12,c13);
    
    fa ff6(f2[4],f3[4],f1[12],v4,c14);
    fa ff7(v4,c9,c12,m[12],c15);
    hal hh6(c14,c15,c16,c17);
    
    fa ff8(f2[5],f3[5],f1[13],v5,c18);
    fa ff9(v5,c13,c16,m[13],c19);
    hal hh7(c18,c19,c20,c21);
    
     fa ff10(f2[6],f3[6],f1[14],v6,c22);
     fa ff11(v6,c17,c20,m[14],c23);
     hal hh8(c22,c23,c24,c25);
       
     fa ff12(f2[7],f3[7],f1[15],v7,c26);
     fa ff13(v7,c21,c24,m[15],c27);
     hal hh9(c26,c27,c28,c29);
          
     fa ff14(f2[8],f3[8],f4[0],v8,c30);
     fa ff15(v8,c25,c28,m[16],c31);
     hal hh10(c30,c31,c32,c33);
               
     fa ff16(f2[9],f3[9],f4[1],v9,c34);
     fa ff17(v9,c29,c32,m[17],c35);
     hal hh11(c34,c35,c36,c37);
                                
     fa ff18(f2[10],f3[10],f4[2],v10,c38);
     fa ff19(v10,c33,c36,m[18],c39);
     hal hh12(c38,c39,c40,c41);   
     
     fa ff20(f2[11],f3[11],f4[3],v11,c42);
     fa ff21(v11,c37,c40,m[19],c43);
     hal hh13(c42,c43,c44,c45);   

     fa ff22(f2[12],f3[12],f4[4],v12,c46);
     fa ff23(v12,c41,c44,m[20],c47);
     hal hh14(c46,c47,c48,c49);  
     
     fa ff24(f2[13],f3[13],f4[5],v13,c50);
     fa ff25(v13,c45,c48,m[21],c51);
     hal hh15(c50,c51,c52,c53);  
                    
     fa ff26(f2[14],f3[14],f4[6],v14,c54);
     fa ff27(v14,c49,c52,m[22],c55);
     hal hh16(c54,c55,c56,c57);  
             
     fa ff28(f2[15],f3[15],f4[7],v15,c58);
     fa ff29(v15,c53,c56,m[23],c59);
     hal hh17(c58,c59,c60,c61);  
             
     fa ff30(f4[8],c60,c57,m[24],c62);
     fa ff31(f4[9],c61,c62,m[25],c63);
     hal hh18(f4[10],c63,m[26],c64);
     hal hh19(f4[11],c64,m[27],c65); 
     hal hh20(f4[12],c65,m[28],c66);
     hal hh21(f4[13],c66,m[29],c67);
     hal hh22(f4[14],c67,m[30],m[31]);
 
             
     xor(sign,asign,bsign);
endmodule
