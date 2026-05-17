module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire intermediate_carry;
    wire [31:0] b_after_xor;
    
    assign b_after_xor = b ^ {32{sub}};
    
    add16 instance1 (.a(a[15:0]), .b(b_after_xor[15:0]), .cin(sub), .sum(sum[15:0]), .cout(intermediate_carry));
    /* verilator lint_off PINCONNECTEMPTY */
    add16 instance2 (.a(a[31:16]), .b(b_after_xor[31:16]), .cin(intermediate_carry), .sum(sum[31:16]), .cout());
    /* verilator lint_on PINCONNECTEMPTY */
    
endmodule
