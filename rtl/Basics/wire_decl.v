`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

wire g1;
wire g2;
wire g3;

assign g1 = a & b;
assign g2 = c & d;
    
assign g3 = g1 | g2;

assign out = g3;
assign out_n = ~g3;

endmodule
