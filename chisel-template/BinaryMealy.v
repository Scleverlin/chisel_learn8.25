module BinaryMealy(
  input   clock,
  input   reset,
  input   io_in,
  output  io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[mealy.scala 28:22]
  wire  _GEN_2 = state == 2'h0 & io_in; // @[mealy.scala 31:10 33:26]
  wire  _GEN_3 = io_in ? 1'h0 : 1'h1; // @[mealy.scala 34:20 36:16 39:16]
  wire  _GEN_5 = state == 2'h1 ? _GEN_3 : _GEN_2; // @[mealy.scala 33:26]
  assign io_out = state == 2'h2 ? 1'h0 : _GEN_5; // @[mealy.scala 33:26]
  always @(posedge clock) begin
    if (reset) begin // @[mealy.scala 28:22]
      state <= 2'h2; // @[mealy.scala 28:22]
    end else if (state == 2'h2) begin // @[mealy.scala 33:26]
      state <= {{1'd0}, io_in};
    end else if (state == 2'h1) begin // @[mealy.scala 33:26]
      state <= {{1'd0}, io_in};
    end else if (state == 2'h0) begin // @[mealy.scala 33:26]
      state <= {{1'd0}, io_in};
    end
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
  state = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
