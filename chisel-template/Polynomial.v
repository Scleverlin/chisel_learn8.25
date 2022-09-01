module Polynomial(
  input         clock,
  input         reset,
  input  [1:0]  io_select,
  input  [31:0] io_x,
  output [31:0] io_fOfX
);
  wire [63:0] _square_T = $signed(io_x) * $signed(io_x); // @[poly.scala 20:18]
  wire [34:0] _result_T = 3'sh2 * $signed(io_x); // @[poly.scala 22:30]
  wire [31:0] square = _square_T[31:0]; // @[poly.scala 19:20 20:10]
  wire [34:0] _GEN_3 = {{3{square[31]}},square}; // @[poly.scala 22:23]
  wire [34:0] _result_T_3 = $signed(_GEN_3) - $signed(_result_T); // @[poly.scala 22:23]
  wire [34:0] _result_T_6 = $signed(_result_T_3) + 35'sh1; // @[poly.scala 22:39]
  wire [34:0] _result_T_7 = 3'sh2 * $signed(square); // @[poly.scala 24:20]
  wire [35:0] _result_T_8 = 4'sh6 * $signed(io_x); // @[poly.scala 24:37]
  wire [35:0] _GEN_4 = {{1{_result_T_7[34]}},_result_T_7}; // @[poly.scala 24:30]
  wire [35:0] _result_T_11 = $signed(_GEN_4) + $signed(_result_T_8); // @[poly.scala 24:30]
  wire [35:0] _result_T_14 = $signed(_result_T_11) + 36'sh3; // @[poly.scala 24:45]
  wire [35:0] _result_T_15 = 4'sh4 * $signed(square); // @[poly.scala 26:20]
  wire [36:0] _result_T_16 = 5'sha * $signed(io_x); // @[poly.scala 26:38]
  wire [36:0] _GEN_5 = {{1{_result_T_15[35]}},_result_T_15}; // @[poly.scala 26:30]
  wire [36:0] _result_T_19 = $signed(_GEN_5) - $signed(_result_T_16); // @[poly.scala 26:30]
  wire [36:0] _result_T_22 = $signed(_result_T_19) - 37'sh5; // @[poly.scala 26:46]
  wire [36:0] _GEN_0 = io_select == 2'h1 ? $signed({{1{_result_T_14[35]}},_result_T_14}) : $signed(_result_T_22); // @[poly.scala 23:33 24:12 26:12]
  wire [36:0] _GEN_1 = io_select == 2'h0 ? $signed({{2{_result_T_6[34]}},_result_T_6}) : $signed(_GEN_0); // @[poly.scala 21:27 22:12]
  assign io_fOfX = _GEN_1[31:0]; // @[poly.scala 18:20]
endmodule
