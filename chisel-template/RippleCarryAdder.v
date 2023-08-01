module FullAdder(
  input   io_a,
  input   io_b,
  input   io_cin,
  output  io_sum,
  output  io_cout
);
  assign io_sum = io_a ^ io_b ^ io_cin; // @[rca.scala 14:25]
  assign io_cout = io_a & io_b | io_a & io_cin | io_b & io_cin; // @[rca.scala 15:46]
endmodule
module RippleCarryAdder(
  input        clock,
  input        reset,
  input  [7:0] io_a,
  input  [7:0] io_b,
  output       io_sum_0,
  output       io_sum_1,
  output       io_sum_2,
  output       io_sum_3,
  output       io_sum_4,
  output       io_sum_5,
  output       io_sum_6,
  output       io_sum_7,
  output       io_cout
);
  wire  FullAdder_io_a; // @[rca.scala 26:40]
  wire  FullAdder_io_b; // @[rca.scala 26:40]
  wire  FullAdder_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_1_io_a; // @[rca.scala 26:40]
  wire  FullAdder_1_io_b; // @[rca.scala 26:40]
  wire  FullAdder_1_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_1_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_1_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_2_io_a; // @[rca.scala 26:40]
  wire  FullAdder_2_io_b; // @[rca.scala 26:40]
  wire  FullAdder_2_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_2_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_2_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_3_io_a; // @[rca.scala 26:40]
  wire  FullAdder_3_io_b; // @[rca.scala 26:40]
  wire  FullAdder_3_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_3_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_3_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_4_io_a; // @[rca.scala 26:40]
  wire  FullAdder_4_io_b; // @[rca.scala 26:40]
  wire  FullAdder_4_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_4_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_4_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_5_io_a; // @[rca.scala 26:40]
  wire  FullAdder_5_io_b; // @[rca.scala 26:40]
  wire  FullAdder_5_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_5_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_5_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_6_io_a; // @[rca.scala 26:40]
  wire  FullAdder_6_io_b; // @[rca.scala 26:40]
  wire  FullAdder_6_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_6_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_6_io_cout; // @[rca.scala 26:40]
  wire  FullAdder_7_io_a; // @[rca.scala 26:40]
  wire  FullAdder_7_io_b; // @[rca.scala 26:40]
  wire  FullAdder_7_io_cin; // @[rca.scala 26:40]
  wire  FullAdder_7_io_sum; // @[rca.scala 26:40]
  wire  FullAdder_7_io_cout; // @[rca.scala 26:40]
  FullAdder FullAdder ( // @[rca.scala 26:40]
    .io_a(FullAdder_io_a),
    .io_b(FullAdder_io_b),
    .io_cin(FullAdder_io_cin),
    .io_sum(FullAdder_io_sum),
    .io_cout(FullAdder_io_cout)
  );
  FullAdder FullAdder_1 ( // @[rca.scala 26:40]
    .io_a(FullAdder_1_io_a),
    .io_b(FullAdder_1_io_b),
    .io_cin(FullAdder_1_io_cin),
    .io_sum(FullAdder_1_io_sum),
    .io_cout(FullAdder_1_io_cout)
  );
  FullAdder FullAdder_2 ( // @[rca.scala 26:40]
    .io_a(FullAdder_2_io_a),
    .io_b(FullAdder_2_io_b),
    .io_cin(FullAdder_2_io_cin),
    .io_sum(FullAdder_2_io_sum),
    .io_cout(FullAdder_2_io_cout)
  );
  FullAdder FullAdder_3 ( // @[rca.scala 26:40]
    .io_a(FullAdder_3_io_a),
    .io_b(FullAdder_3_io_b),
    .io_cin(FullAdder_3_io_cin),
    .io_sum(FullAdder_3_io_sum),
    .io_cout(FullAdder_3_io_cout)
  );
  FullAdder FullAdder_4 ( // @[rca.scala 26:40]
    .io_a(FullAdder_4_io_a),
    .io_b(FullAdder_4_io_b),
    .io_cin(FullAdder_4_io_cin),
    .io_sum(FullAdder_4_io_sum),
    .io_cout(FullAdder_4_io_cout)
  );
  FullAdder FullAdder_5 ( // @[rca.scala 26:40]
    .io_a(FullAdder_5_io_a),
    .io_b(FullAdder_5_io_b),
    .io_cin(FullAdder_5_io_cin),
    .io_sum(FullAdder_5_io_sum),
    .io_cout(FullAdder_5_io_cout)
  );
  FullAdder FullAdder_6 ( // @[rca.scala 26:40]
    .io_a(FullAdder_6_io_a),
    .io_b(FullAdder_6_io_b),
    .io_cin(FullAdder_6_io_cin),
    .io_sum(FullAdder_6_io_sum),
    .io_cout(FullAdder_6_io_cout)
  );
  FullAdder FullAdder_7 ( // @[rca.scala 26:40]
    .io_a(FullAdder_7_io_a),
    .io_b(FullAdder_7_io_b),
    .io_cin(FullAdder_7_io_cin),
    .io_sum(FullAdder_7_io_sum),
    .io_cout(FullAdder_7_io_cout)
  );
  assign io_sum_0 = FullAdder_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_1 = FullAdder_1_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_2 = FullAdder_2_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_3 = FullAdder_3_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_4 = FullAdder_4_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_5 = FullAdder_5_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_6 = FullAdder_6_io_sum; // @[rca.scala 28:20 35:15]
  assign io_sum_7 = FullAdder_7_io_sum; // @[rca.scala 28:20 35:15]
  assign io_cout = FullAdder_7_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_io_a = io_a[0]; // @[rca.scala 32:31]
  assign FullAdder_io_b = io_b[0]; // @[rca.scala 33:31]
  assign FullAdder_io_cin = 1'h0; // @[rca.scala 27:19 30:12]
  assign FullAdder_1_io_a = io_a[1]; // @[rca.scala 32:31]
  assign FullAdder_1_io_b = io_b[1]; // @[rca.scala 33:31]
  assign FullAdder_1_io_cin = FullAdder_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_2_io_a = io_a[2]; // @[rca.scala 32:31]
  assign FullAdder_2_io_b = io_b[2]; // @[rca.scala 33:31]
  assign FullAdder_2_io_cin = FullAdder_1_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_3_io_a = io_a[3]; // @[rca.scala 32:31]
  assign FullAdder_3_io_b = io_b[3]; // @[rca.scala 33:31]
  assign FullAdder_3_io_cin = FullAdder_2_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_4_io_a = io_a[4]; // @[rca.scala 32:31]
  assign FullAdder_4_io_b = io_b[4]; // @[rca.scala 33:31]
  assign FullAdder_4_io_cin = FullAdder_3_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_5_io_a = io_a[5]; // @[rca.scala 32:31]
  assign FullAdder_5_io_b = io_b[5]; // @[rca.scala 33:31]
  assign FullAdder_5_io_cin = FullAdder_4_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_6_io_a = io_a[6]; // @[rca.scala 32:31]
  assign FullAdder_6_io_b = io_b[6]; // @[rca.scala 33:31]
  assign FullAdder_6_io_cin = FullAdder_5_io_cout; // @[rca.scala 27:19 36:16]
  assign FullAdder_7_io_a = io_a[7]; // @[rca.scala 32:31]
  assign FullAdder_7_io_b = io_b[7]; // @[rca.scala 33:31]
  assign FullAdder_7_io_cin = FullAdder_6_io_cout; // @[rca.scala 27:19 36:16]
endmodule
