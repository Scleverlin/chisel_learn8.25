circuit HalfFullAdder :
  module HalfFullAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, s : UInt<1>, carryOut : UInt<1>}

    node _sum_T = add(io.a, io.b) @[halffulladder.scala 14:18]
    node sum = add(_sum_T, UInt<1>("h0")) @[halffulladder.scala 14:26]
    node _io_s_T = bits(sum, 0, 0) @[halffulladder.scala 15:14]
    io.s <= _io_s_T @[halffulladder.scala 15:8]
    node _io_carryOut_T = bits(sum, 1, 1) @[halffulladder.scala 16:21]
    io.carryOut <= _io_carryOut_T @[halffulladder.scala 16:15]

