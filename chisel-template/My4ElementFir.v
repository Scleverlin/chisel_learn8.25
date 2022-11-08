module My4ElementFir(
  input        clock,
  input        reset,
  input  [7:0] io_in,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] x_n1; // @[fir.scala 12:21]
  reg [7:0] x_n2; // @[fir.scala 13:21]
  reg [7:0] x_n3; // @[fir.scala 14:21]
  wire [15:0] _io_out_T = io_in * 8'h1; // @[fir.scala 15:19]
  wire [15:0] _io_out_T_1 = x_n1 * 8'h2; // @[fir.scala 15:38]
  wire [15:0] _io_out_T_3 = _io_out_T + _io_out_T_1; // @[fir.scala 15:31]
  wire [15:0] _io_out_T_4 = x_n2 * 8'h3; // @[fir.scala 16:10]
  wire [15:0] _io_out_T_6 = _io_out_T_3 + _io_out_T_4; // @[fir.scala 15:50]
  wire [15:0] _io_out_T_7 = x_n3 * 8'h4; // @[fir.scala 16:29]
  wire [15:0] _io_out_T_9 = _io_out_T_6 + _io_out_T_7; // @[fir.scala 16:22]
  assign io_out = _io_out_T_9[7:0]; // @[fir.scala 15:10]
  always @(posedge clock) begin
    if (reset) begin // @[fir.scala 12:21]
      x_n1 <= 8'h0; // @[fir.scala 12:21]
    end else begin
      x_n1 <= io_in; // @[fir.scala 12:21]
    end
    if (reset) begin // @[fir.scala 13:21]
      x_n2 <= 8'h0; // @[fir.scala 13:21]
    end else begin
      x_n2 <= x_n1; // @[fir.scala 13:21]
    end
    if (reset) begin // @[fir.scala 14:21]
      x_n3 <= 8'h0; // @[fir.scala 14:21]
    end else begin
      x_n3 <= x_n2; // @[fir.scala 14:21]
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
  x_n1 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  x_n2 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  x_n3 = _RAND_2[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
