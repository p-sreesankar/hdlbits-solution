// ============================================================================
// HDLBits Emulation Primitives Library
// Required for local Verilator strict linting structural resolution.
// ============================================================================

// ----------------------------------------------------------------------------
// Basic Logic Module (mod_a)
// ----------------------------------------------------------------------------
module mod_a (
    input  wire in1,
    input  wire in2,
    output wire out
);
    // Dummy combinational logic to prevent UNDRIVEN wire failures
    assign out = in1 & in2;
endmodule

// ----------------------------------------------------------------------------
// 1-Bit Full Adder
// ----------------------------------------------------------------------------
module add1 (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    assign {cout, sum} = a + b + cin;
endmodule

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
