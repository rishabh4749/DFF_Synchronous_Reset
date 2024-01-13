`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 00:15:17
// Design Name: 
// Module Name: DFF_synrst_tb
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


module DFF_synrst_tb(

    );
    reg clk;
    reg [7:0] d;
    reg reset;
    wire [7:0] q;
    DFF_SynRst dut(.clk(clk),.d(d),.q(q),.reset(reset));
    always #10 clk=~clk;
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%b reset=%0b q=%b",$time,d,reset,q);
    #100 $finish;
    end
    initial
    begin
    clk<=0;
    #9;
    d<=8'b10101010;
    reset<=1'b0;
    #19;
    d<=8'b10101010;
    reset<=1'b1;
    #39;
    d<=8'b01010101;
    reset<=1'b0;
    end
endmodule
