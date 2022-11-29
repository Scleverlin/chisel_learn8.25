module MyManyDynamicElementVecFir(
  input        clock,
  input        reset,
  input  [7:0] io_in,
  output [7:0] io_out,
  input  [7:0] io_consts_0,
  input  [7:0] io_consts_1,
  input  [7:0] io_consts_2,
  input  [7:0] io_consts_3,
  input  [7:0] io_consts_4,
  input  [7:0] io_consts_5
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] regs_0; // @[firwithREGFILE.scala 16:20]
  reg [7:0] regs_1; // @[firwithREGFILE.scala 16:20]
  reg [7:0] regs_2; // @[firwithREGFILE.scala 16:20]
  reg [7:0] regs_3; // @[firwithREGFILE.scala 16:20]
  reg [7:0] regs_4; // @[firwithREGFILE.scala 16:20]
  wire [15:0] _muls_0_T = io_in * io_consts_0; // @[firwithREGFILE.scala 24:35]
  wire [15:0] _muls_1_T = regs_0 * io_consts_1; // @[firwithREGFILE.scala 25:41]
  wire [15:0] _muls_2_T = regs_1 * io_consts_2; // @[firwithREGFILE.scala 25:41]
  wire [15:0] _muls_3_T = regs_2 * io_consts_3; // @[firwithREGFILE.scala 25:41]
  wire [15:0] _muls_4_T = regs_3 * io_consts_4; // @[firwithREGFILE.scala 25:41]
  wire [15:0] _muls_5_T = regs_4 * io_consts_5; // @[firwithREGFILE.scala 25:41]
  wire [7:0] muls_1 = _muls_1_T[7:0]; // @[firwithREGFILE.scala 22:18 25:26]
  wire [7:0] muls_0 = _muls_0_T[7:0]; // @[firwithREGFILE.scala 22:18 24:26]
  wire [7:0] scan_1 = muls_1 + muls_0; // @[firwithREGFILE.scala 31:31]
  wire [7:0] muls_2 = _muls_2_T[7:0]; // @[firwithREGFILE.scala 22:18 25:26]
  wire [7:0] scan_2 = muls_2 + scan_1; // @[firwithREGFILE.scala 31:31]
  wire [7:0] muls_3 = _muls_3_T[7:0]; // @[firwithREGFILE.scala 22:18 25:26]
  wire [7:0] scan_3 = muls_3 + scan_2; // @[firwithREGFILE.scala 31:31]
  wire [7:0] muls_4 = _muls_4_T[7:0]; // @[firwithREGFILE.scala 22:18 25:26]
  wire [7:0] scan_4 = muls_4 + scan_3; // @[firwithREGFILE.scala 31:31]
  wire [7:0] muls_5 = _muls_5_T[7:0]; // @[firwithREGFILE.scala 22:18 25:26]
  assign io_out = muls_5 + scan_4; // @[firwithREGFILE.scala 31:31]
  always @(posedge clock) begin
    if (reset) begin // @[firwithREGFILE.scala 16:20]
      regs_0 <= 8'h0; // @[firwithREGFILE.scala 16:20]
    end else begin
      regs_0 <= io_in; // @[firwithREGFILE.scala 18:26]
    end
    if (reset) begin // @[firwithREGFILE.scala 16:20]
      regs_1 <= 8'h0; // @[firwithREGFILE.scala 16:20]
    end else begin
      regs_1 <= regs_0; // @[firwithREGFILE.scala 19:26]
    end
    if (reset) begin // @[firwithREGFILE.scala 16:20]
      regs_2 <= 8'h0; // @[firwithREGFILE.scala 16:20]
    end else begin
      regs_2 <= regs_1; // @[firwithREGFILE.scala 19:26]
    end
    if (reset) begin // @[firwithREGFILE.scala 16:20]
      regs_3 <= 8'h0; // @[firwithREGFILE.scala 16:20]
    end else begin
      regs_3 <= regs_2; // @[firwithREGFILE.scala 19:26]
    end
    if (reset) begin // @[firwithREGFILE.scala 16:20]
      regs_4 <= 8'h0; // @[firwithREGFILE.scala 16:20]
    end else begin
      regs_4 <= regs_3; // @[firwithREGFILE.scala 19:26]
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
  regs_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
