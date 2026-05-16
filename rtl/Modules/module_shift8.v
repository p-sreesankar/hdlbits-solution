module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] q1;
    wire [7:0] q2;
    wire [7:0] q3;
    
    my_dff8 instance1 (.clk(clk), .d(d), .q(q1));
    my_dff8 instance2 (.clk(clk), .d(q1), .q(q2));
    my_dff8 instance3 (.clk(clk), .d(q2), .q(q3));
    
    mux_4_to_1_8b instance4 (.a(d), .b(q1), .c(q2), .d(q3), .sel(sel), .out(q));

endmodule

module mux_4_to_1_8b (
    input wire [7:0] a, b, c, d,
    input wire [1:0] sel,
    output reg [7:0] out
);
    always @(*) begin
        case (sel)
            2'b00: out = a;
            2'b01: out = b;
            2'b10: out = c;
            2'b11: out = d;
            default: out = 8'b0;
        endcase
    end
endmodule
