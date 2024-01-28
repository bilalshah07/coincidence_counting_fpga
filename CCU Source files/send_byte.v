`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 05:38:39 PM
// Design Name: 
// Module Name: send_byte
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


module send_byte #(parameter data_bits = 8) 
    (            input [data_bits-1 : 0] data,
                 input baud_clk,
                 output tx, dt    
     );
    
    reg bit, done;
    reg [data_bits+1 : 0] uart_packet;
    integer i; 
    
    always @ (posedge baud_clk)
    begin
        bit <= uart_packet[i];
        if (i == data_bits+1)
        begin
            done <= 1;
            i <= 0;
        end
        else
        begin
            done <= 0;
            i <= i + 1;
        end
    end
    
    initial
    begin
        i = 0;
        done = 1;
        uart_packet = 10'b1111111110;
    end
    
    always @ (data)
    begin
        uart_packet = {1'b1, data, 1'b0}; // 0 is start bit and 1 is stop bit. Note: The least significant bit goes out first.
    end
    
    assign tx = bit;
    assign dt = done;
    
endmodule
