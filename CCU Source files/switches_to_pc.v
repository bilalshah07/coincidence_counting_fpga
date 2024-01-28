`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 04:56:18 PM
// Design Name: 
// Module Name: switches_to_pc
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


module switches_to_pc(input [7:0] data,
                      input clk,
                      output tx
    );
    
    
    baud_gen #(.baud_rate(4_000_000)) gen (.clk(clk), .baud_clk(baud_clk));
    
    send_byte #(.data_bits(8)) send_pc (.data(data), .baud_clk(baud_clk), .tx(tx));  
    
endmodule
