`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:43:32 AM
// Design Name: 
// Module Name: tb_output_shuffle
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


module tb_output_shuffle(

    );
    
    reg dt;
    integer i;
    wire [3:0] selection;
    
    initial
    begin
        i = 0;
        dt = 0;
                
        for(i = 0; i < 300; i = i + 1)
        begin
            dt = !dt;
            #5;
        end
    end
    
    output_shuffle tb_shuffle (.dt(dt), .selection(selection));
    
endmodule
