`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 10:48:28 AM
// Design Name: 
// Module Name: mux_test
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


module mux_test(

    );
    
    reg [7:0] a, b, c, d, e, f, g, h, i;
    reg [3:0] select;
    
    initial
    begin
        a = 8'b00001111;
        b = 8'b11110000;
        c = 8'b01010101;
        d = 8'b11111111;
        e = 8'b00001111;
        f = 8'b11001100;
        g = 8'b10101010;
        h = 8'b00000000;
        i = 8'b00110011;
        select = 4'b0000;
    end
    
    out_select_mux test_mux (.a(a), .b(b), .bp(c), .ap(d), .ab(e), .abp(f), .apb(g), .apbp(h), .abbp(i), .s(select), .batch_done(batch_done));
    
endmodule
