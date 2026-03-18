`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 15:24:16
// Design Name: 
// Module Name: 2_t0_1_mux
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


module mux1(
    input ctrl,
    input a0,
    input a1,
    output out
    );
    
    
    
assign out = (ctrl == 1'b0) ? a0 : a1;
     
endmodule


module mux2(a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,o6);

input a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2 ;
wire o0,o1,o2,o3,o4,o5;
output o6;

mux1 fir1(.ctrl(s0),.a0(a0),.a1(a1),.out(o0));
mux1 fir2(.ctrl(s0),.a0(a2),.a1(a3),.out(o1));
mux1 fir3(.ctrl(s0),.a0(a4),.a1(a5),.out(o2));
mux1 fir4(.ctrl(s0),.a0(a6),.a1(a7),.out(o3));
mux1 fir5(.ctrl(s1),.a0(o0),.a1(o1),.out(o4));
mux1 fir6(.ctrl(s1),.a0(o2),.a1(o3),.out(o5));
mux1 fir7(.ctrl(s2),.a0(o4),.a1(o5),.out(o6));


 
            

endmodule
