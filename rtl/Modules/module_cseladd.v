module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire intermediate_carry;
    wire [15:0] intermediate_sum_one;
    wire [15:0] intermediate_sum_two;
    
    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(intermediate_carry));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(intermediate_sum_one), .cout());
    add16 instance3 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(intermediate_sum_two), .cout()); 
                     
    mux_2_to_1_32_bit instance4 (.a(intermediate_sum_one), .b(intermediate_sum_two), .sel(intermediate_carry), .op(sum[31:16]));
           
endmodule
                     
module mux_2_to_1_32_bit (input [15:0] a, input [15:0] b, input sel, output reg [15:0] op);
    always @(*) begin
        case (sel)
            1'b0: op = a;
            1'b1: op = b;
            default: op = 16'b0;
        endcase
    end
endmodule
