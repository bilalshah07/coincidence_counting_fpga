`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 12:34:53 PM
// Design Name: 
// Module Name: tb_listen
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


module tb_listen(

    );
    
    reg in, clk;
    wire out;
    integer i, sustain;
    
    initial
    begin
        clk = 0;
        in = 0;
        i = 0;
        sustain = 0;
        
        for (i = 0; i < 100; i = i+1)
        begin
            if (i % 17 == 0)
            begin
                in = 1;
                sustain = 4;
            end
            else if (sustain != 0)
            begin
                in = 1;
                sustain = sustain - 1;
            end
            else
            begin
                in = 0;
            end
            
            clk = !clk;
            #5;
        end
    end
    
    
    listen lis_tb (.clk(clk), .raw_signal(in), .out_pulse(out));
    
    
endmodule
