`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 00:11:24
// Design Name: 
// Module Name: DFF_SynRst
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


module DFF_SynRst(
    input clk,
    input [7:0] d,
    output reg [7:0] q,
    input reset
    );
    integer i;
    always @ (posedge clk) begin
    if(reset)
    q<=0;
    else
    begin
    for(i=0;i<8;i=i+1)
    q[i]<=d[i];
    end
    end
endmodule
