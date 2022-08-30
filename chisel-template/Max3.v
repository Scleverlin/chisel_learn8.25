module Max3(
  input         clock,
  input         reset,
  input  [15:0] io_in1,
  input  [15:0] io_in2,
  input  [15:0] io_in3,
  output [15:0] io_out
);
  wire [15:0] _GEN_0 = io_in2 >= io_in3 ? io_in2 : io_in3; // @[max3.scala 18:32 19:12 21:12]
  assign io_out = io_in1 >= io_in2 & io_in1 >= io_in3 ? io_in1 : _GEN_0; // @[max3.scala 16:46 17:12]
endmodule
