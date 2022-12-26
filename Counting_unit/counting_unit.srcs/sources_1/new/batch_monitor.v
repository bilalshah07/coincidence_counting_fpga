`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 11:49:55 AM
// Design Name: 
// Module Name: batch_monitor
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


module batch_monitor #(parameter batch_size = 10, baud_rate = 4_000_000) (
    input clk,
    input [3:0] selection,
    output tick
    );
    
    reg [7:0] packet_bit_count;
    
    reg batch_done;
    
    always @ (posedge clk)
    begin
        if (selection == 0)
        begin
            if (packet_bit_count == (100_000_000/baud_rate)*10-1)
            begin    
                batch_done <= 1;
                packet_bit_count <= 0;
            end
            else
            begin
                batch_done <= 0;
                packet_bit_count <= packet_bit_count + 1;
            end
        end
        else
        begin
            batch_done <= 0;
        end
    end
    
    initial
    begin
        batch_done = 0;
        packet_bit_count = 1;
    end
    
    assign tick = batch_done;
    
endmodule
