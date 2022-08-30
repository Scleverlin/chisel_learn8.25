module LastConnect(
  input        clock,
  input        reset,
  input  [3:0] io_in,
  output [3:0] io_out
);
  assign io_out = 4'h4; // @[lastde.scala 14:10]
endmodule
