`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 05:56:41 PM
// Design Name: 
// Module Name: out_select_mux
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


module out_select_mux(input [7:0] a, b, bp, ap, ab, abp, apb, apbp, abbp,
                            [3:0] s,
                      output reg [7:0] send
    );
    
    // This multiplexer sets the out going data depending on the value of selector, and sends a signal when the whole batch of data is transmitted.
    reg [7:0] header;
    
    always @ (s, a, b, bp, ap, ab, abp, apb, apbp, abbp)
    case(s)
        
        4'd0:
        begin
            send = header;
        end
        
        4'd1:
        begin
            send = a;
        end
        
        4'd2:
        begin
            send = b;
        end
        
        4'd3: 
        begin
            send = bp; 
        end
        
        4'd4: 
        begin
            send = ap;
        end
        
        4'd5: 
        begin
            send = ab;
        end
        
        4'd6: 
        begin
            send = abp;
        end
        
        4'd7: 
        begin
            send = apb;
        end
        
        4'd8: 
        begin
            send = apbp;
        end
        
        4'd9: 
        begin
            send = abbp;
        end
        
        default
        begin
            send = 8'bxxxxxxxx;
        end        
    endcase
    
    initial
    begin
        header = 8'd47;
    end
    
endmodule
