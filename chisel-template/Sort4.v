module Sort4(
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
  wire [15:0] row10 = io_in0 < io_in1 ? io_in0 : io_in1; // @[wire.scala 24:25 25:11 28:11]
  wire [15:0] row11 = io_in0 < io_in1 ? io_in1 : io_in0; // @[wire.scala 24:25 26:11 29:11]
  wire [15:0] row12 = io_in2 < io_in3 ? io_in2 : io_in3; // @[wire.scala 32:25 33:11 36:11]
  wire [15:0] row13 = io_in2 < io_in3 ? io_in3 : io_in2; // @[wire.scala 32:25 34:11 37:11]
  wire [15:0] row21 = row11 < row12 ? row11 : row12; // @[wire.scala 43:23 44:11 47:11]
  wire [15:0] row22 = row11 < row12 ? row12 : row11; // @[wire.scala 43:23 45:11 48:11]
  wire [15:0] row20 = row10 < row13 ? row10 : row13; // @[wire.scala 53:23 54:11 57:11]
  wire [15:0] row23 = row10 < row13 ? row13 : row10; // @[wire.scala 53:23 55:11 58:11]
  assign io_out0 = row20 < row21 ? row20 : row21; // @[wire.scala 61:23 62:13 65:13]
  assign io_out1 = row20 < row21 ? row21 : row20; // @[wire.scala 61:23 63:13 66:13]
  assign io_out2 = row22 < row23 ? row22 : row23; // @[wire.scala 69:23 70:13 73:13]
  assign io_out3 = row22 < row23 ? row23 : row22; // @[wire.scala 69:23 71:13 74:13]
endmodule
