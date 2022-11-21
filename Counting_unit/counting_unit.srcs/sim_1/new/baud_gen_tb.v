`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2022 11:17:51 AM
// Design Name: 
// Module Name: baud_gen_tb
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


module baud_gen_tb #(parameter baud_rate = 19200) (input clk,
                output baud_clk
    );
    
    reg tick;
    integer baud_target, counter;
    
    initial
    begin
        baud_target = 192_000/baud_rate;
        counter = 0;
    end
    
    always @ (posedge clk)
    begin
  
        if (counter == baud_target)
        begin
            tick <= 1'b1;
            counter <= 1;
        end
        
        else
        begin
            tick <= 1'b0;
            counter <= counter + 1;
        end
        
    end
    
    assign baud_clk = tick;
    
endmodule
