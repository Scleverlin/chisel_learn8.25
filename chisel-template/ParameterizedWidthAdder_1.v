module ParameterizedWidthAdder_1(
  input        clock,
  input        reset,
  input        io_in0,
  input  [3:0] io_in1,
  output [4:0] io_sum
);
  wire [3:0] _GEN_0 = {{3'd0}, io_in0}; // @[implicit.scala 25:20]
  wire [3:0] _io_sum_T_1 = _GEN_0 + io_in1; // @[implicit.scala 25:20]
  assign io_sum = {{1'd0}, _io_sum_T_1}; // @[implicit.scala 25:10]
endmodule
