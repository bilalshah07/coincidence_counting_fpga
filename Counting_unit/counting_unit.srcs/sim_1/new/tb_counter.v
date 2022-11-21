`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 09:32:30 AM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter(

    );
    
    reg clk, raw_pulses, done;
    integer i;
    wire [7:0] reg_count;
    
    initial
    begin
        i = 0;
        clk = 0;
        raw_pulses = 0;
        done = 0;
        
        for(i = 0; i < 300; i = i + 1)
        begin
        
            if (i%10 == 0)
            begin
                raw_pulses = 1;
            end
            else
            begin
                raw_pulses = 0;
            end
            
            if(i%100 == 0)
            begin
                done = 1;
            end
            else
            begin
                done = 0;
            end
            
            clk = !clk;
            #5;
            
        end
    end
    
    count_pulses tb_pulses (.clk(clk), .raw_pulses(raw_pulses), .batch_done(done), .reg_count(reg_count));
    
endmodule
