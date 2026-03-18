`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 20:47:42
// Design Name: 
// Module Name: tb_mux8
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


module tb_mux8;

reg [7:0]i;
reg [2:0]s;
wire out;

mux8b test( .i1(i[0]),.i2(i[1]),.i3(i[2]),.i4(i[3]),.i5(i[4]),.i6(i[5]),.i7(i[6]),.i8(i[7]),.s(s),.out(out));

initial
begin
i = 8'b00000001;s = 3'b000;#10;
i = 8'b00000000;s = 3'b001;#10;
i = 8'b00000100;s = 3'b010;#10;
i = 8'b00001000;s = 3'b011;#10;
i = 8'b00010000;s = 3'b100;#10;
i = 8'b00100000;s = 3'b101;#10;
i = 8'b01000000;s = 3'b110;#10;
i = 8'b10000000;s = 3'b111;#10;
$finish;
end

endmodule
