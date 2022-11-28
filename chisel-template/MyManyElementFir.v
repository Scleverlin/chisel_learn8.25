module MyManyElementFir(
  input        clock,
  input        reset,
  input  [3:0] io_in,
  output [3:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] regs_1; // @[reconfigurableFIR.scala 16:33]
  reg [3:0] regs_2; // @[reconfigurableFIR.scala 16:33]
  reg [3:0] regs_3; // @[reconfigurableFIR.scala 16:33]
  wire [4:0] muls_0 = io_in * 1'h1; // @[reconfigurableFIR.scala 21:23]
  wire [5:0] muls_1 = regs_1 * 2'h2; // @[reconfigurableFIR.scala 21:23]
  wire [5:0] muls_2 = regs_2 * 2'h3; // @[reconfigurableFIR.scala 21:23]
  wire [6:0] muls_3 = regs_3 * 3'h4; // @[reconfigurableFIR.scala 21:23]
  wire [5:0] _GEN_0 = {{1'd0}, muls_0}; // @[reconfigurableFIR.scala 27:28]
  wire [5:0] scan_1 = muls_1 + _GEN_0; // @[reconfigurableFIR.scala 27:28]
  wire [5:0] scan_2 = muls_2 + scan_1; // @[reconfigurableFIR.scala 27:28]
  wire [6:0] _GEN_1 = {{1'd0}, scan_2}; // @[reconfigurableFIR.scala 27:28]
  wire [6:0] scan_3 = muls_3 + _GEN_1; // @[reconfigurableFIR.scala 27:28]
  assign io_out = scan_3[3:0]; // @[reconfigurableFIR.scala 30:10]
  always @(posedge clock) begin
    if (reset) begin // @[reconfigurableFIR.scala 16:33]
      regs_1 <= 4'h0; // @[reconfigurableFIR.scala 16:33]
    end else begin
      regs_1 <= io_in; // @[reconfigurableFIR.scala 16:33]
    end
    if (reset) begin // @[reconfigurableFIR.scala 16:33]
      regs_2 <= 4'h0; // @[reconfigurableFIR.scala 16:33]
    end else begin
      regs_2 <= regs_1; // @[reconfigurableFIR.scala 16:33]
    end
    if (reset) begin // @[reconfigurableFIR.scala 16:33]
      regs_3 <= 4'h0; // @[reconfigurableFIR.scala 16:33]
    end else begin
      regs_3 <= regs_2; // @[reconfigurableFIR.scala 16:33]
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
  regs_1 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  regs_2 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  regs_3 = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
