module ParameterizedWidthAdder(
  input        clock,
  input        reset,
  input        io_in0,
  input  [3:0] io_in1,
  output [5:0] io_sum
);
  wire [3:0] _GEN_0 = {{3'd0}, io_in0}; // @[parpass.scala 15:20]
  wire [4:0] _io_sum_T = _GEN_0 + io_in1; // @[parpass.scala 15:20]
  assign io_sum = {{1'd0}, _io_sum_T}; // @[parpass.scala 15:10]
endmodule
