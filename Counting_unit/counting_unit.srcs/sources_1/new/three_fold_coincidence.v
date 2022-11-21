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
       
    reg [7:0] ans;
     
    always @ (posedge clk)
    begin
        if (x & y & z)
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
