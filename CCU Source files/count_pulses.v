`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 01:14:55 PM
// Design Name: 
// Module Name: register_pulse
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


module count_pulses(input clk, raw_pulses, batch_done,
                    output [7:0] reg_count
    );
    
    reg [7:0] q; 
    reg [7:0] current_count;
    
    always @(posedge clk)
    begin
        if (batch_done)
        begin
            current_count <= q;
            q <= 0;
        end
        else if(raw_pulses)
        begin
            q <= q+1;
            current_count <= current_count;
        end
        else
        begin
            q <= q;
            current_count <= current_count;
        end
    end
        
    assign reg_count = current_count;
    
    initial
    begin
    q = 0;
    current_count = 0;
    end
    
endmodule
