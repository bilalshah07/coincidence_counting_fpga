`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 07:27:41 PM
// Design Name: 
// Module Name: signal_detection_and_processing
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


module signal_detection_and_processing(input A, B, BP, AP, clk,
    output pulse_A, pulse_B, pulse_BP, pulse_AP, pulse_AB, pulse_ABP, pulse_APB, pulse_APBP, pulse_ABBP
    );
        
    // Waiting for input pulses and generate a signal when they do.
    listen lis_A (.clk(clk), .raw_signal(A), .out_pulse(pulse_A));
    listen lis_B (.clk(clk), .raw_signal(B), .out_pulse(pulse_B));
    listen lis_AP (.clk(clk), .raw_signal(AP), .out_pulse(pulse_AP));
    listen lis_BP (.clk(clk), .raw_signal(BP), .out_pulse(pulse_BP));
    
    // Generating all the required pulses A, B, BP, and AP will be used as is we will just add the delays later.
    two_fold_coincidence   raw_AB   (.clk(clk), .x(A),  .y(B),  .o(pulse_AB));
    two_fold_coincidence   raw_ABP  (.clk(clk), .x(A),  .y(BP), .o(pulse_ABP));
    two_fold_coincidence   raw_APB  (.clk(clk), .x(AP), .y(B),  .o(pulse_APB));
    two_fold_coincidence   raw_APBP (.clk(clk), .x(AP), .y(BP), .o(pulse_APBP));
    three_fold_coincidence raw_ABBP (.clk(clk), .x(A),  .y(B),  .z(BP), .o(pulse_ABBP));
    
endmodule
