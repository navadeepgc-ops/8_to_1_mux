`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 16:08:30
// Design Name: 
// Module Name: tb_mux2
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


module tb_mux2();

reg [7:0]a;
reg [2:0]s;
wire out;

mux2 test(.a0(a[0]),.a1(a[1]),.a2(a[2]),.a3(a[3]),.a4(a[4]),.a5(a[5]),.a6(a[6]),.a7(a[7]),.s0(s[0]),.s1(s[1]),.s2(s[2]),.o6(out));

initial
begin
a = 8'b00000001;s = 3'b000;#10;
a = 8'b00000000;s = 3'b001;#10;
a = 8'b00000100;s = 3'b010;#10;
a = 8'b00001000;s = 3'b011;#10;
a = 8'b00010000;s = 3'b100;#10;
a = 8'b00100000;s = 3'b101;#10;
a = 8'b01000000;s = 3'b110;#10;
a = 8'b10000000;s = 3'b111;#10;
$finish;
end

endmodule
