module Sort4_a(
  input         clock,
  input         reset,
  input  [15:0] io_in0,
  input  [15:0] io_in1,
  input  [15:0] io_in2,
  input  [15:0] io_in3,
  output [15:0] io_out0,
  output [15:0] io_out1,
  output [15:0] io_out2,
  output [15:0] io_out3
);
  wire  _T = io_in0 < io_in1; // @[sort4.scala 22:11]
  wire [15:0] row10 = _T ? io_in0 : io_in1; // @[sort4.scala 33:30 34:11 37:11]
  wire [15:0] row11 = _T ? io_in1 : io_in0; // @[sort4.scala 33:30 35:11 38:11]
  wire  _T_1 = io_in2 < io_in3; // @[sort4.scala 22:11]
  wire [15:0] row12 = _T_1 ? io_in2 : io_in3; // @[sort4.scala 41:30 42:11 45:11]
  wire [15:0] row13 = _T_1 ? io_in3 : io_in2; // @[sort4.scala 41:30 43:11 46:11]
  wire  _T_2 = row11 < row12; // @[sort4.scala 22:11]
  wire [15:0] row21 = _T_2 ? row11 : row12; // @[sort4.scala 52:28 53:11 56:11]
  wire [15:0] row22 = _T_2 ? row12 : row11; // @[sort4.scala 52:28 54:11 57:11]
  wire  _T_3 = row10 < row13; // @[sort4.scala 22:11]
  wire [15:0] row20 = _T_3 ? row10 : row13; // @[sort4.scala 62:28 63:11 66:11]
  wire [15:0] row23 = _T_3 ? row13 : row10; // @[sort4.scala 62:28 64:11 67:11]
  wire  _T_4 = row20 < row21; // @[sort4.scala 22:11]
  wire  _T_5 = row22 < row23; // @[sort4.scala 22:11]
  assign io_out0 = _T_4 ? row20 : row21; // @[sort4.scala 70:28 71:13 74:13]
  assign io_out1 = _T_4 ? row21 : row20; // @[sort4.scala 70:28 72:13 75:13]
  assign io_out2 = _T_5 ? row22 : row23; // @[sort4.scala 78:28 79:13 82:13]
  assign io_out3 = _T_5 ? row23 : row22; // @[sort4.scala 78:28 80:13 83:13]
endmodule
