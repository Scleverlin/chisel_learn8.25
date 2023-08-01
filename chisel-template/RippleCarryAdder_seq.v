module FullAdder(
  input   io_a,
  input   io_b,
  input   io_cin,
  output  io_sum,
  output  io_cout
);
  assign io_sum = io_a ^ io_b ^ io_cin; // @[rca.scala 14:25]
  assign io_cout = io_a & io_b | io_a & io_cin | io_b & io_cin; // @[rca.scala 15:46]
endmodule
module RippleCarryAdder_seq(
  input        clock,
  input        reset,
  input  [7:0] io_a,
  input  [7:0] io_b,
  output       io_sum_0,
  output       io_sum_1,
  output       io_sum_2,
  output       io_sum_3,
  output       io_sum_4,
  output       io_sum_5,
  output       io_sum_6,
  output       io_sum_7,
  output       io_cout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  FullAdder_io_a; // @[rca.scala 51:40]
  wire  FullAdder_io_b; // @[rca.scala 51:40]
  wire  FullAdder_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_1_io_a; // @[rca.scala 51:40]
  wire  FullAdder_1_io_b; // @[rca.scala 51:40]
  wire  FullAdder_1_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_1_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_1_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_2_io_a; // @[rca.scala 51:40]
  wire  FullAdder_2_io_b; // @[rca.scala 51:40]
  wire  FullAdder_2_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_2_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_2_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_3_io_a; // @[rca.scala 51:40]
  wire  FullAdder_3_io_b; // @[rca.scala 51:40]
  wire  FullAdder_3_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_3_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_3_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_4_io_a; // @[rca.scala 51:40]
  wire  FullAdder_4_io_b; // @[rca.scala 51:40]
  wire  FullAdder_4_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_4_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_4_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_5_io_a; // @[rca.scala 51:40]
  wire  FullAdder_5_io_b; // @[rca.scala 51:40]
  wire  FullAdder_5_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_5_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_5_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_6_io_a; // @[rca.scala 51:40]
  wire  FullAdder_6_io_b; // @[rca.scala 51:40]
  wire  FullAdder_6_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_6_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_6_io_cout; // @[rca.scala 51:40]
  wire  FullAdder_7_io_a; // @[rca.scala 51:40]
  wire  FullAdder_7_io_b; // @[rca.scala 51:40]
  wire  FullAdder_7_io_cin; // @[rca.scala 51:40]
  wire  FullAdder_7_io_sum; // @[rca.scala 51:40]
  wire  FullAdder_7_io_cout; // @[rca.scala 51:40]
  reg  sumReg_0; // @[rca.scala 53:23]
  reg  sumReg_1; // @[rca.scala 53:23]
  reg  sumReg_2; // @[rca.scala 53:23]
  reg  sumReg_3; // @[rca.scala 53:23]
  reg  sumReg_4; // @[rca.scala 53:23]
  reg  sumReg_5; // @[rca.scala 53:23]
  reg  sumReg_6; // @[rca.scala 53:23]
  reg  sumReg_7; // @[rca.scala 53:23]
  FullAdder FullAdder ( // @[rca.scala 51:40]
    .io_a(FullAdder_io_a),
    .io_b(FullAdder_io_b),
    .io_cin(FullAdder_io_cin),
    .io_sum(FullAdder_io_sum),
    .io_cout(FullAdder_io_cout)
  );
  FullAdder FullAdder_1 ( // @[rca.scala 51:40]
    .io_a(FullAdder_1_io_a),
    .io_b(FullAdder_1_io_b),
    .io_cin(FullAdder_1_io_cin),
    .io_sum(FullAdder_1_io_sum),
    .io_cout(FullAdder_1_io_cout)
  );
  FullAdder FullAdder_2 ( // @[rca.scala 51:40]
    .io_a(FullAdder_2_io_a),
    .io_b(FullAdder_2_io_b),
    .io_cin(FullAdder_2_io_cin),
    .io_sum(FullAdder_2_io_sum),
    .io_cout(FullAdder_2_io_cout)
  );
  FullAdder FullAdder_3 ( // @[rca.scala 51:40]
    .io_a(FullAdder_3_io_a),
    .io_b(FullAdder_3_io_b),
    .io_cin(FullAdder_3_io_cin),
    .io_sum(FullAdder_3_io_sum),
    .io_cout(FullAdder_3_io_cout)
  );
  FullAdder FullAdder_4 ( // @[rca.scala 51:40]
    .io_a(FullAdder_4_io_a),
    .io_b(FullAdder_4_io_b),
    .io_cin(FullAdder_4_io_cin),
    .io_sum(FullAdder_4_io_sum),
    .io_cout(FullAdder_4_io_cout)
  );
  FullAdder FullAdder_5 ( // @[rca.scala 51:40]
    .io_a(FullAdder_5_io_a),
    .io_b(FullAdder_5_io_b),
    .io_cin(FullAdder_5_io_cin),
    .io_sum(FullAdder_5_io_sum),
    .io_cout(FullAdder_5_io_cout)
  );
  FullAdder FullAdder_6 ( // @[rca.scala 51:40]
    .io_a(FullAdder_6_io_a),
    .io_b(FullAdder_6_io_b),
    .io_cin(FullAdder_6_io_cin),
    .io_sum(FullAdder_6_io_sum),
    .io_cout(FullAdder_6_io_cout)
  );
  FullAdder FullAdder_7 ( // @[rca.scala 51:40]
    .io_a(FullAdder_7_io_a),
    .io_b(FullAdder_7_io_b),
    .io_cin(FullAdder_7_io_cin),
    .io_sum(FullAdder_7_io_sum),
    .io_cout(FullAdder_7_io_cout)
  );
  assign io_sum_0 = sumReg_0; // @[rca.scala 65:10]
  assign io_sum_1 = sumReg_1; // @[rca.scala 65:10]
  assign io_sum_2 = sumReg_2; // @[rca.scala 65:10]
  assign io_sum_3 = sumReg_3; // @[rca.scala 65:10]
  assign io_sum_4 = sumReg_4; // @[rca.scala 65:10]
  assign io_sum_5 = sumReg_5; // @[rca.scala 65:10]
  assign io_sum_6 = sumReg_6; // @[rca.scala 65:10]
  assign io_sum_7 = sumReg_7; // @[rca.scala 65:10]
  assign io_cout = FullAdder_7_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_io_a = io_a[0]; // @[rca.scala 57:31]
  assign FullAdder_io_b = io_b[0]; // @[rca.scala 58:31]
  assign FullAdder_io_cin = 1'h0; // @[rca.scala 52:19 55:12]
  assign FullAdder_1_io_a = io_a[1]; // @[rca.scala 57:31]
  assign FullAdder_1_io_b = io_b[1]; // @[rca.scala 58:31]
  assign FullAdder_1_io_cin = FullAdder_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_2_io_a = io_a[2]; // @[rca.scala 57:31]
  assign FullAdder_2_io_b = io_b[2]; // @[rca.scala 58:31]
  assign FullAdder_2_io_cin = FullAdder_1_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_3_io_a = io_a[3]; // @[rca.scala 57:31]
  assign FullAdder_3_io_b = io_b[3]; // @[rca.scala 58:31]
  assign FullAdder_3_io_cin = FullAdder_2_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_4_io_a = io_a[4]; // @[rca.scala 57:31]
  assign FullAdder_4_io_b = io_b[4]; // @[rca.scala 58:31]
  assign FullAdder_4_io_cin = FullAdder_3_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_5_io_a = io_a[5]; // @[rca.scala 57:31]
  assign FullAdder_5_io_b = io_b[5]; // @[rca.scala 58:31]
  assign FullAdder_5_io_cin = FullAdder_4_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_6_io_a = io_a[6]; // @[rca.scala 57:31]
  assign FullAdder_6_io_b = io_b[6]; // @[rca.scala 58:31]
  assign FullAdder_6_io_cin = FullAdder_5_io_cout; // @[rca.scala 52:19 61:16]
  assign FullAdder_7_io_a = io_a[7]; // @[rca.scala 57:31]
  assign FullAdder_7_io_b = io_b[7]; // @[rca.scala 58:31]
  assign FullAdder_7_io_cin = FullAdder_6_io_cout; // @[rca.scala 52:19 61:16]
  always @(posedge clock) begin
    if (reset) begin // @[rca.scala 53:23]
      sumReg_0 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_0 <= FullAdder_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_1 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_1 <= FullAdder_1_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_2 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_2 <= FullAdder_2_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_3 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_3 <= FullAdder_3_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_4 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_4 <= FullAdder_4_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_5 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_5 <= FullAdder_5_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_6 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_6 <= FullAdder_6_io_sum; // @[rca.scala 60:15]
    end
    if (reset) begin // @[rca.scala 53:23]
      sumReg_7 <= 1'h0; // @[rca.scala 53:23]
    end else begin
      sumReg_7 <= FullAdder_7_io_sum; // @[rca.scala 60:15]
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
  sumReg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sumReg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sumReg_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sumReg_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sumReg_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sumReg_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sumReg_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sumReg_7 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
