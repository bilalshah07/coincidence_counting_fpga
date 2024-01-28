`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 02:20:47 PM
// Design Name: 
// Module Name: output_shuffle
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


module output_shuffle  #(parameter data_packets = 10) (input dt,
                      output wire [3:0] selection
    );
    
    reg [3:0] select;
    
    always @(posedge dt)
    begin
        if (select >= data_packets-1)
        begin
            select <= 0;
        end
        else
        begin
            select <=  select + 1;
        end
    end
    
    initial
    begin
        select = 0;
    end
    
    assign selection = select;
    
endmodule
