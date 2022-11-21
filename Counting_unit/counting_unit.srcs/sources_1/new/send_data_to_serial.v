`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 08:08:23 PM
// Design Name: 
// Module Name: send_data_to_serial
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


module send_data_to_serial(input clk, 
    input [7:0] counts_A, counts_B, counts_BP, counts_AP, counts_AB, counts_ABP, counts_APB, counts_APBP, counts_ABBP,
    output [3:0] selection,
    output tx
    );
    
    wire [7:0] send_this_data;
    
    baud_gen #(.baud_rate(4_000_000)) gen (.clk(clk), .baud_clk(baud_clk));
    
    out_select_mux multiplexer (.a(counts_A), .b(counts_B), .bp(counts_BP), .ap(counts_AP), .ab(counts_AB), 
                                .abp(counts_ABP), .apb(counts_APB), .apbp(counts_APBP), .abbp(counts_ABBP),
                                .s(selection), .send(send_this_data)
                                );
                                
    // Creating a selector that will shuffle the outputs of the multiplexer.
    output_shuffle select_all (.dt(done_tick), .selection(selection));
    
    //sending the output of the multiplexer over to the UART channel.
    send_byte #(.data_bits(8)) send_data (.data(send_this_data), .baud_clk(baud_clk), .tx(tx), .dt(done_tick));

    
endmodule
