module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo 
);
    // You must drive the outputs to clear the UNDRIVEN / UNUSEDSIGNAL errors
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];
endmodule