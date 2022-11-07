module HalfFullAdder_1(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  output  io_s,
  output  io_carryOut
);
  wire [1:0] _sum_T = io_a + io_b; // @[halffulladder_1.scala 13:18]
  wire [2:0] sum = {{1'd0}, _sum_T}; // @[halffulladder_1.scala 13:26]
  assign io_s = sum[0]; // @[halffulladder_1.scala 14:14]
  assign io_carryOut = sum[1]; // @[halffulladder_1.scala 15:21]
endmodule
