module MyShiftRegister(
  input        clock,
  input        reset,
  input        io_in,
  output [3:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] state; // @[shifter.scala 12:22]
  wire [4:0] _nextState_T = {state, 1'h0}; // @[shifter.scala 14:26]
  wire [4:0] _GEN_0 = {{4'd0}, io_in}; // @[shifter.scala 14:32]
  wire [4:0] nextState = _nextState_T | _GEN_0; // @[shifter.scala 14:32]
  wire [4:0] _GEN_1 = reset ? 5'h1 : nextState; // @[shifter.scala 12:{22,22} 15:9]
  assign io_out = state; // @[shifter.scala 16:10]
  always @(posedge clock) begin
    state <= _GEN_1[3:0]; // @[shifter.scala 12:{22,22} 15:9]
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
  state = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
