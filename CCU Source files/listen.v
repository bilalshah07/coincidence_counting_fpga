`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 08:17:26 PM
// Design Name: 
// Module Name: listen
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


module listen(
    input clk,
    input raw_signal,
    output wire out_pulse
    );
    
    integer dead_time;
    reg pulse;
    
    always @ (posedge clk)
    begin
        if (dead_time != 0)
        begin
            pulse <= 0;
            dead_time <= dead_time - 1;
        end
        else if (raw_signal)
        begin
            pulse <= 1;
            dead_time <= 5;
        end
        else
        begin
            pulse <= 0;
            dead_time <= dead_time;
        end            
    end
    
    initial
    begin
        pulse = 0;
        dead_time = 0;
    end
    
    assign out_pulse = pulse;
    
endmodule
