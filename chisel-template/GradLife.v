module GradLife(
  input        clock,
  input        reset,
  input  [1:0] io_state,
  input        io_coffee,
  input        io_idea,
  input        io_pressure,
  output [1:0] io_nextState
);
  wire [1:0] _GEN_0 = io_pressure ? 2'h2 : 2'h0; // @[gradlife.scala 20:18 29:{20,5}]
  wire [1:0] _GEN_1 = io_idea ? 2'h0 : _GEN_0; // @[gradlife.scala 27:{20,5}]
  wire [1:0] _GEN_2 = io_coffee ? 2'h1 : _GEN_1; // @[gradlife.scala 25:{20,5}]
  wire  _T_2 = io_idea | io_pressure; // @[gradlife.scala 34:24]
  wire [1:0] _GEN_3 = _T_2 ? 2'h2 : 2'h0; // @[gradlife.scala 20:18 35:{21,6}]
  wire [1:0] _GEN_4 = io_coffee ? 2'h1 : _GEN_3; // @[gradlife.scala 33:{20,5}]
  wire  _T_4 = io_coffee | io_idea; // @[gradlife.scala 38:26]
  wire [1:0] _GEN_5 = io_pressure ? 2'h3 : 2'h0; // @[gradlife.scala 20:18 41:{21,6}]
  wire [1:0] _GEN_6 = _T_4 ? 2'h2 : _GEN_5; // @[gradlife.scala 39:{20,5}]
  wire [1:0] _GEN_7 = io_state == 2'h2 ? _GEN_6 : 2'h0; // @[gradlife.scala 20:18 37:38]
  wire [1:0] _GEN_8 = io_state == 2'h1 ? _GEN_4 : _GEN_7; // @[gradlife.scala 31:37]
  assign io_nextState = io_state == 2'h0 ? _GEN_2 : _GEN_8; // @[gradlife.scala 22:28]
endmodule
