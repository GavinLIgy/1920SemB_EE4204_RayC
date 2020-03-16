`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2020 09:44:54 PM
// Design Name: 
// Module Name: Dataflow_verilog
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


module Dataflow_verilog(
    input in_a,
    input in_b,
    input in_c,
    output out_F
    );
    
    wire na,nb,nc;
    wire and_1, and_2;
    
    assign na = ~in_a;
    assign nb = ~in_b;
    assign nc = ~in_c;
    
    assign and_1 = in_a & nb & in_c;
    assign and_2 = na & in_b & in_c;
    
    assign out_F = and_1 | and_2 | nc;
    
endmodule
