`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 06:37:28 PM
// Design Name: 
// Module Name: three_fold_coincidence
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


module three_fold_coincidence(
    input x, y, z, clk,
    output o
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
        else if (x & y & z)
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
    
    assign o = pulse;
    
endmodule
