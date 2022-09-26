circuit ParameterizedWidthAdder :
  module ParameterizedWidthAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in0 : UInt<1>, flip in1 : UInt<4>, sum : UInt<6>}

    node _io_sum_T = add(io.in0, io.in1) @[parpass.scala 15:20]
    io.sum <= _io_sum_T @[parpass.scala 15:10]

