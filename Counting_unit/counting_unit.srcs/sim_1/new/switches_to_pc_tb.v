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


module switches_to_pc_tb(
    );
    
    wire tx;
    reg clk;
    reg [7:0] samp_data;
    reg [9:0] uart_packet;
    
    baud_gen_tb gen (.clk(clk), .baud_clk(baud_clk_tb));
    
    send_byte send_pc (.data(samp_data), .baud_clk(baud_clk_tb), .tx(tx)); 
    
    integer i;
 
    
    initial
    begin
        
        clk = 1;
        samp_data = 8'b00000001; // 0 is start bit and 1 is stop bit
        
        uart_packet = {1'b1, samp_data, 1'b0};
        
        for(i = 0; i < 300; i = i+1)
        begin
            clk = !clk;
            #5;
        end
        
        $display("data packet: %8b, uart_packet original = %10b", samp_data, uart_packet);
        
    end
    
endmodule
