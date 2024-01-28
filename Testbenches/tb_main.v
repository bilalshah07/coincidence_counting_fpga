`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2022 02:16:11 PM
// Design Name: 
// Module Name: main
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


module tb_main(
    );
    
    reg clk, A, B, BP, AP;
    wire tx;
    integer i, sustain_a, sustain_b, sustain_bp, sustain_ap;
    
    initial
    begin
        
        clk = 1;
        A = 0;
        B = 0;
        BP = 0;
        AP = 0;

        sustain_a = 0;
        sustain_b = 0;
        sustain_bp = 0;
        sustain_ap = 0;
        
        for(i = 0; i < 15000; i = i+1)
        begin
            
            
            if (i % 1000 == 0)
            begin
                A = 0;
                sustain_a = 4;
            end
            else if (sustain_a != 0)
            begin
                A = 0;
                sustain_a = sustain_a - 1;
            end
            else
            begin
                A = 0;
            end
            
            
            
            if (i % 1200 == 0)
            begin
                B = 0;
                sustain_b = 4;
            end
            else if (sustain_b != 0)
            begin
                B = 0;
                sustain_b = sustain_b - 1;
            end
            else
            begin
                B = 0;
            end
            
            
            
            if (i % 1500 == 0)
            begin
                BP = 0;
                sustain_bp = 4;
            end
            else if (sustain_bp != 0)
            begin
                BP = 0;
                sustain_bp = sustain_bp - 1;
            end
            else
            begin
                BP = 0;
            end
            
            
            
            if (i % 1800 == 0)
            begin
                AP = 0;
                sustain_ap = 4;
            end
            else if (sustain_ap != 0)
            begin
                AP = 0;
                sustain_ap = sustain_ap - 1;
            end
            else
            begin
                AP = 0;
            end
     
            clk = !clk;
            #5;
            A = 0;
            B = 0;
            BP = 0;
            AP = 0;

        end
    end
    
    main simulation (.clk(clk), .A(A), .B(B), .BP(BP), .AP(AP), .tx(tx));
    
endmodule