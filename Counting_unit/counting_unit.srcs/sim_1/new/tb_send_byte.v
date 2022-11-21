`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:06:50 PM
// Design Name: 
// Module Name: tb_send_byte
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


module tb_send_byte(

    );
    
    integer i;
    reg baud_clk;
    reg [7: 0] data;
    wire tx, dt;
    wire [4:0] iter;
    
    initial
    begin
        data = 8'b00000000;
        i = 0;
        baud_clk = 0;
        for(i = 0; i < 300; i = i + 1)
        begin
            baud_clk = !baud_clk;
            #5;
        end
    end
    
    send_byte tb_send (.data(data), .baud_clk(baud_clk), .tx(tx), .dt(dt), .iter(iter));
    
    // to make this tb work you need to alte the send_byte to send i as the iter.
    
endmodule
