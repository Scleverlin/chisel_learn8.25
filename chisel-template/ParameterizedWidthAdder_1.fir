circuit ParameterizedWidthAdder_1 :
  module ParameterizedWidthAdder_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in0 : UInt<1>, flip in1 : UInt<4>, sum : UInt<5>}

    node _io_sum_T = add(io.in0, io.in1) @[implicit.scala 25:20]
    node _io_sum_T_1 = tail(_io_sum_T, 1) @[implicit.scala 25:20]
    io.sum <= _io_sum_T_1 @[implicit.scala 25:10]

