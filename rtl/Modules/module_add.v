module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire intermediate_wire;

    
    add16 instance1 (.a( a[15:0] ),.b( b[15:0] ), .cin(1'b0), .cout(intermediate_wire), .sum(sum[15:0]));
    add16 instance2 (.a( a[31:16] ),.b( b[31:16] ), .cin(intermediate_wire), .cout(), .sum(sum[31:16]));


endmodule
