module HalfFullAdder(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  output  io_s,
  output  io_carryOut
);
  wire [1:0] _sum_T = io_a + io_b; // @[halffulladder.scala 14:18]
  wire [2:0] sum = {{1'd0}, _sum_T}; // @[halffulladder.scala 14:26]
  assign io_s = sum[0]; // @[halffulladder.scala 15:14]
  assign io_carryOut = sum[1]; // @[halffulladder.scala 16:21]
endmodule
