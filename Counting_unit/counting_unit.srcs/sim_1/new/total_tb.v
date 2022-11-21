`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 02:43:18 PM
// Design Name: 
// Module Name: total_tb
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


module total_tb(

    );
    
    wire tx, pulse_a, pulse_b, pulse_bp, pulse_ap, pulse_ab, pulse_abp, pulse_apb, pulse_abbp, batch_done, baud_clk, done_tick;
    reg clk, A, B, BP, AP;
    wire [7:0] counts_A, counts_B, counts_BP, counts_AP, counts_AB, counts_ABP, counts_APB, counts_APBP, counts_ABBP, send_this_data;
    wire [3:0] selection;
    reg [7:0] send_this_data;
    
    integer i, sustain_a, sustain_b, sustain_bp, sustain_ap;
    
    initial
    begin
        
        clk = 1;
        A = 0;
        B = 0;
        BP = 0;
        AP = 0;
//        batch_done = 0;
//        done_tick = 0;
        sustain_a = 0;
        sustain_b = 0;
        sustain_bp = 0;
        sustain_ap = 0;
        
        for(i = 0; i < 12000; i = i+1)
        begin
            
            
            if (i % 1000 == 0)
            begin
                A = 1;
                sustain_a = 4;
            end
            else if (sustain_a != 0)
            begin
                A = 1;
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

    listen lis_a (.clk(clk), .raw_signal(A), .out_pulse(pulse_a));
    listen lis_b (.clk(clk), .raw_signal(B), .out_pulse(pulse_b));
    listen lis_bp (.clk(clk), .raw_signal(BP), .out_pulse(pulse_bp));
    listen lis_ap (.clk(clk), .raw_signal(AP), .out_pulse(pulse_ap));

    two_fold_coincidence   raw_AB   (.x(pulse_a),  .y(pulse_b),  .o(pulse_ab), .clk(clk));
    two_fold_coincidence   raw_ABP  (.x(pulse_a),  .y(pulse_bp), .o(pulse_abp), .clk(clk));
    two_fold_coincidence   raw_APB  (.x(pulse_ap), .y(pulse_b),  .o(pulse_apb), .clk(clk));
    two_fold_coincidence   raw_APBP (.x(pulse_ap), .y(pulse_bp), .o(pulse_apbp), .clk(clk));
    three_fold_coincidence raw_ABBP (.x(pulse_a),  .y(pulse_b),  .z(pulse_bp), .o(pulse_abbp), .clk(clk));
    
    count_pulses count_0 (.raw_pulses(pulse_a), .clk(clk), .batch_done(batch_done), .reg_count(counts_A));
    count_pulses count_1 (.raw_pulses(pulse_b), .clk(clk), .batch_done(batch_done), .reg_count(counts_B));
    count_pulses count_2 (.raw_pulses(pulse_bp), .clk(clk), .batch_done(batch_done), .reg_count(counts_BP));
    count_pulses count_3 (.raw_pulses(pulse_ap), .clk(clk), .batch_done(batch_done), .reg_count(counts_AP));
    count_pulses count_4 (.raw_pulses(pulse_ab), .clk(clk), .batch_done(batch_done), .reg_count(counts_AB));
    count_pulses count_5 (.raw_pulses(pulse_abp), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABP));
    count_pulses count_6 (.raw_pulses(pulse_apb), .clk(clk), .batch_done(batch_done), .reg_count(counts_APB));
    count_pulses count_7 (.raw_pulses(pulse_apbp), .clk(clk), .batch_done(batch_done), .reg_count(counts_APBP));
    count_pulses count_8 (.raw_pulses(pulse_abbp), .clk(clk), .batch_done(batch_done), .reg_count(counts_ABBP));
    
    batch_monitor monitor (.clk(clk), .selection(selection), .batch_done(batch_done));

    output_shuffle select_all (.dt(done_tick), .selection(selection));
    
    out_select_mux multiplexer (.a(counts_A), .b(counts_B), .bp(counts_BP), .ap(counts_AP), .ab(counts_AB), 
                                .abp(counts_ABP), .apb(counts_APB), .apbp(counts_APBP), .abbp(counts_ABBP),
                                .s(selection), .send(send_this_data)
                                );
    
    baud_gen #(.baud_rate(4_000_000)) tb_baud_clk (.clk(clk), .baud_clk(baud_clk));  
    
    send_byte tb_send (.data(send_this_data), .baud_clk(baud_clk), .tx(tx), .dt(done_tick));
    

endmodule