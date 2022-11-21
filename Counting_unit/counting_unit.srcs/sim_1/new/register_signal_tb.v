`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2022 04:17:56 PM
// Design Name: 
// Module Name: register_signal_tb
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


module register_signal_tb(

    );
    
    reg click;
    wire clock, and_out, clock4M;
    
    assign clock = click;
    
    initial click = 0;
    
    initial
    begin
    #200;
    $finish;
    end
    
    integer i;
    initial
    begin
        for (i = 0; i < 40; i = i + 1)
        begin
            click = !click;
            #5;
        end
    end
     
    two_fold_coincidence clk_coinc (.x(clock), .y(clock), .o(and_out));
    
   clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clock4M),     // output clk_out1
   // Clock in ports
    .clk_in1(clock));      // input clk_in1
    
endmodule
