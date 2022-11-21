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


module main(input clk_in, 
            input A, B, BP, AP,
            output tx
    );
    
    // Creating required wires to carry data between the modules/components.
    wire [7:0] counts_A, counts_B, counts_BP, counts_AP, counts_AB, counts_ABP, counts_APB, counts_APBP, counts_ABBP, send_this_data;
    wire [3:0] selection; 
    
    clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out(clk),     // output clk_out
   // Clock in ports
    .clk_in(clk_in));      // input clk_in
    
    baud_gen #(.baud_rate(4_000_000)) gen (.clk(clk), .baud_clk(baud_clk));
    
    listen lis_A (.clk(clk), .raw_signal(A), .out_pulse(pulse_A));
    listen lis_B (.clk(clk), .raw_signal(B), .out_pulse(pulse_B));
    listen lis_AP (.clk(clk), .raw_signal(AP), .out_pulse(pulse_AP));
    listen lis_BP (.clk(clk), .raw_signal(BP), .out_pulse(pulse_BP));
    
    // Generating all the required pulses A, B, BP, and AP will be used as is we will just add the delays later.
    two_fold_coincidence   raw_AB   (.clk(clk), .x(pulse_A),  .y(pulse_B),  .o(pulse_AB));
    two_fold_coincidence   raw_ABP  (.clk(clk), .x(pulse_A),  .y(pulse_BP), .o(pulse_ABP));
    two_fold_coincidence   raw_APB  (.clk(clk), .x(pulse_AP), .y(pulse_B),  .o(pulse_APB));
    two_fold_coincidence   raw_APBP (.clk(clk), .x(pulse_AP), .y(pulse_BP), .o(pulse_APBP));
    three_fold_coincidence raw_ABBP (.clk(clk), .x(pulse_A),  .y(pulse_B),  .z(pulse_BP), .o(pulse_ABBP));
    
    
    // Counting the generated pulses.
    count_pulses count_0 (.raw_pulses(pulse_A), .clk(clk), .batch_done(batch_done), .reg_count(counts_A));
    count_pulses count_1 (.raw_pulses(pulse_B), .clk(clk), .batch_done(batch_done), .reg_count(counts_B));
    count_pulses count_2 (.raw_pulses(pulse_BP), .clk(clk), .batch_done(batch_done), .reg_count(counts_BP));
    count_pulses count_3 (.raw_pulses(pulse_AP), .clk(clk), .batch_done(batch_done), .reg_count(counts_AP));
    count_pulses count_4 (.raw_pulses(pulse_AB), .clk(clk), .batch_done(batch_done), .reg_count(counts_AB));
    count_pulses count_5 (.raw_pulses(pulse_ABP), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABP));
    count_pulses count_6 (.raw_pulses(pulse_APB), .clk(clk), .batch_done(batch_done), .reg_count(counts_APB));
    count_pulses count_7 (.raw_pulses(pulse_APBP), .clk(clk), .batch_done(batch_done), .reg_count(counts_APBP));
    count_pulses count_8 (.raw_pulses(pulse_ABBP), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABBP));
    
    
    // Sending selector and data to a multiplexer
    out_select_mux multiplexer (.a(counts_A), .b(counts_B), .bp(counts_BP), .ap(counts_AP), .ab(counts_AB), 
                                .abp(counts_ABP), .apb(counts_APB), .apbp(counts_APBP), .abbp(counts_ABBP),
                                .s(selection), .send(send_this_data)
                                );
                                
    batch_monitor #(.batch_size(10)) monitor (.clk(clk), .selection(selection), .batch_done(batch_done));
    
    // Creating a selector that will shuffle the outputs of the multiplexer.
    output_shuffle select_all (.dt(done_tick), .selection(selection));
    
    //sending the output of the multiplexer over to the UART channel.
    send_byte #(.data_bits(8)) send_data (.data(send_this_data), .baud_clk(baud_clk), .tx(tx), .dt(done_tick));
    
endmodule
