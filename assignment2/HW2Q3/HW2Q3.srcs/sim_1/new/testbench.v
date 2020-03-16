`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2020 10:11:08 PM
// Design Name: 
// Module Name: testbench
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


module testbench();

reg clk;
always #5 clk = (clk === 1'b0);

reg [2:0] test_in;
wire output_structral;
wire output_dataflow;

initial test_in = 3'b000;

always @(posedge clk) begin
    test_in <= test_in + 1'b1;
end

Structural_verilog dut1(test_in[2],test_in[1],test_in[0],output_structral);
Dataflow_verilog dut2(test_in[2],test_in[1],test_in[0],output_dataflow);

endmodule
