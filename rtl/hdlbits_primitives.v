// 16-bit Adder Primitive
module add16 (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        cin,
    output wire [15:0] sum,
    output wire        cout
);
    // Explicit concatenation for carry-out capture
    assign {cout, sum} = a + b + cin;
endmodule

// 1-bit Full Adder Primitive
module add1 (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    assign {cout, sum} = a + b + cin;
endmodule

// D-Flip Flop Primitive
module my_dff (
    input  wire clk,
    input  wire d,
    output reg  q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule
