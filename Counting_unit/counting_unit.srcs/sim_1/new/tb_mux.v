`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:28:53 AM
// Design Name: 
// Module Name: tb_mux
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


module tb_mux(

    );
    
    reg [7:0] a, b, bp, ap, ab, abp, apb, apbp, abbp;
    reg [3:0] selection;
    integer i;
    wire [7:0] send;
    
    initial
    begin
        a = 8'd10;
        b = 8'd20;
        bp = 8'd30;
        ap = 8'd40; 
        ab = 8'd50; 
        abp = 8'd60; 
        apb = 8'd70; 
        apbp = 8'd80; 
        abbp = 8'd90;
        
        for (i = 0; i < 15; i = i+1)
        begin
            selection = i % 9;
            #100; 
        end
        
    end
    
    out_select_mux tb_check (.a(a), .b(b), .bp(bp), .ap(ap), .ab(ab), .abp(abp), .apb(apb), .apbp(apbp), .abbp(abbp), .send(send), .s(selection));
    
endmodule
