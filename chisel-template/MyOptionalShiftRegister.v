module MyOptionalShiftRegister(
  input        clock,
  input        reset,
  input        io_en,
  input        io_in,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] state; // @[parshifter.scala 11:22]
  wire [8:0] _nextState_T = {state, 1'h0}; // @[parshifter.scala 13:26]
  wire [8:0] _GEN_1 = {{8'd0}, io_in}; // @[parshifter.scala 13:32]
  wire [8:0] nextState = _nextState_T | _GEN_1; // @[parshifter.scala 13:32]
  wire [8:0] _GEN_0 = io_en ? nextState : {{1'd0}, state}; // @[parshifter.scala 14:16 15:12 11:22]
  wire [8:0] _GEN_2 = reset ? 9'h1 : _GEN_0; // @[parshifter.scala 11:{22,22}]
  assign io_out = state; // @[parshifter.scala 17:10]
  always @(posedge clock) begin
    state <= _GEN_2[7:0]; // @[parshifter.scala 11:{22,22}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
