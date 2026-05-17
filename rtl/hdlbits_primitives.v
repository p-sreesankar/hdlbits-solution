// ============================================================================
// HDLBits Emulation Primitives Library
// Required for local Verilator strict linting structural resolution.
// ============================================================================

// ----------------------------------------------------------------------------
// 16-Bit Ripple Carry / Block Adder
// ----------------------------------------------------------------------------
module add16 (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        cin,
    output wire [15:0] sum,
    output wire        cout
);
    assign {cout, sum} = a + b + cin;
endmodule

// ----------------------------------------------------------------------------
// 1-Bit D-Flip Flop
// ----------------------------------------------------------------------------
module my_dff (
    input  wire clk,
    input  wire d,
    output reg  q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule

// ----------------------------------------------------------------------------
// 8-Bit D-Flip Flop Register
// ----------------------------------------------------------------------------
module my_dff8 (
    input  wire clk,
    input  wire [7:0] d,
    output reg  [7:0] q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule
