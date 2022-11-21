`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 09:38:14 AM
// Design Name: 
// Module Name: two_fold_coincidence
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


module two_fold_coincidence(input x, y, clk,
                            output o);
    
    reg [7:0] ans;
    
    always @ (posedge clk)
    begin
        if (x & y)
        begin
            ans <= 1;
        end
        else
        begin
            ans <= 0;
        end
    end
    
    assign o = ans;
    
    initial
    begin
        ans = 0;
    end
                                
endmodule
