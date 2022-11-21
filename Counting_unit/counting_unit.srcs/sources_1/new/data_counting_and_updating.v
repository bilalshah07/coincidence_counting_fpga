`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 07:47:37 PM
// Design Name: 
// Module Name: data_counting_and_updating
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


module data_counting_and_updating(
    input pulse_A, pulse_B, pulse_BP, pulse_AP, pulse_AB, pulse_ABP, pulse_APB, pulse_APBP, pulse_ABBP, clk, batch_done,
    output [7:0] counts_A, counts_B, counts_BP, counts_AP, counts_AB, counts_ABP, counts_APB, counts_APBP, counts_ABBP
    );
    
    count_pulses count_0 (.raw_pulses(pulse_A), .clk(clk), .batch_done(batch_done), .reg_count(counts_A));
    count_pulses count_1 (.raw_pulses(pulse_B), .clk(clk), .batch_done(batch_done), .reg_count(counts_B));
    count_pulses count_2 (.raw_pulses(pulse_BP), .clk(clk), .batch_done(batch_done), .reg_count(counts_BP));
    count_pulses count_3 (.raw_pulses(pulse_AP), .clk(clk), .batch_done(batch_done), .reg_count(counts_AP));
    count_pulses count_4 (.raw_pulses(pulse_AB), .clk(clk), .batch_done(batch_done), .reg_count(counts_AB));
    count_pulses count_5 (.raw_pulses(pulse_ABP), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABP));
    count_pulses count_6 (.raw_pulses(pulse_APB), .clk(clk), .batch_done(batch_done), .reg_count(counts_APB));
    count_pulses count_7 (.raw_pulses(pulse_APBP), .clk(clk), .batch_done(batch_done), .reg_count(counts_APBP));
    count_pulses count_8 (.raw_pulses(pulse_ABBP), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABBP));
    
endmodule
