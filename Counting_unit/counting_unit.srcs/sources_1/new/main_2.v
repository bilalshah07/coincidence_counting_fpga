`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 07:37:31 PM
// Design Name: 
// Module Name: main_2
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


module main_2(
            input clk, 
            input A, B, BP, AP,
            output tx
    );
    
    wire pulse_A, pulse_B, pulse_BP, pulse_AP, pulse_AB, pulse_ABP, pulse_APB, pulse_APBP, pulse_ABBP, batch_done;
    wire [7:0] counts_A, counts_B, counts_BP, counts_AP, counts_AB, counts_ABP, counts_APB, counts_APBP, counts_ABBP;
    wire [3:0] selection; 

    
    signal_detection_and_processing step_1 (.A(A), .B(B), .BP(BP), .AP(AP), .clk(clk), 
                                            .pulse_A(pulse_A), .pulse_B(pulse_B), .pulse_BP(pulse_BP), .pulse_AP(pulse_AP), .pulse_AB(pulse_AB), .pulse_ABP(pulse_ABP), .pulse_APB(pulse_APB), .pulse_APBP(pulse_APBP), .pulse_ABBP(pulse_ABBP));
                                            
    data_counting_and_updating step_2 (.pulse_A(pulse_A), .pulse_B(pulse_B), .pulse_BP(pulse_BP), .pulse_AP(pulse_AP), .pulse_AB(pulse_AB), .pulse_ABP(pulse_ABP), .pulse_APB(pulse_APB), .pulse_APBP(pulse_APBP), .pulse_ABBP(pulse_ABBP), .batch_done(batch_done), .clk(clk),
                                        .counts_A(counts_A), .counts_B(counts_B), .counts_BP(counts_BP), .counts_AP(counts_AP), .counts_AB(counts_AB), .counts_ABP(counts_ABP), .counts_APB(counts_APB), .counts_APBP(counts_APBP), .counts_ABBP(counts_ABBP));                                    
        
    send_data_to_serial step_3 (.counts_A(counts_A), .counts_B(counts_B), .counts_BP(counts_BP), .counts_AP(counts_AP), .counts_AB(counts_AB), .counts_ABP(counts_ABP), .counts_APB(counts_APB), .counts_APBP(counts_APBP), .counts_ABBP(counts_ABBP), .tx(tx), .selection(selection), .clk(clk));
    
    batch_monitor monitor (.clk(clk), .selection(selection), .tick(batch_done));

    
endmodule
