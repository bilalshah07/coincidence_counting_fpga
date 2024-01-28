`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 05:52:12 PM
// Design Name: 
// Module Name: baud_gen
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


module baud_gen #(parameter baud_rate = 19200) (input clk,
                output baud_clk
    );
    
    reg tick;
    integer baud_target, counter;
    
    initial
    begin
        baud_target = 100_000_000/baud_rate;
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
