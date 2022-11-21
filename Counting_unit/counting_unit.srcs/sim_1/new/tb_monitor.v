`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:59:29 AM
// Design Name: 
// Module Name: tb_monitor
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


module tb_monitor(

    );
    
    reg clk;
    reg [3:0] selection;
    integer i;
    wire batch_done;
    
    initial
    begin
        i = 0;
        clk = 0;
        selection = 0;
                
        for(i = 0; i < 300; i = i + 1)
        begin
            selection = i%9;
            clk = !clk;
            #5;
        end
        
    end
    
    batch_monitor tb_batch (.clk(clk), .selection(selection), .batch_done(batch_done));
    
endmodule
