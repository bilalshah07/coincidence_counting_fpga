`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2022 05:08:12 PM
// Design Name: 
// Module Name: clk_signal
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


module clk_signal(
    input clk_100,
    output to_osc
    );
    
    wire clk_50;
    
    clk_wiz_1 clk_100_gen
   (
    // Clock out ports
    .clk_out1(clk_50),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_100));
    
     assign clk_50 = to_osc;
    
endmodule
