`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 16:48:50
// Design Name: 
// Module Name: mux8b
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


module mux8b(i1,i2,i3,i4,i5,i6,i7,i8,s,out);
input i1,i2,i3,i4,i5,i6,i7,i8;
input [2:0]s;
output reg out;

always@(*) begin

if (s == 3'b000) 
   out = i1;
else if(s == 3'b001)
   out = i2;
else if(s == 3'b010)
   out = i3;
else if( s == 3'b011)
   out = i4;
else if( s == 3'b100)
   out = i5;
else if( s == 3'b101)
   out = i6;
else if( s == 3'b110)
   out = i7;
else 
   out = i8;
end
endmodule
