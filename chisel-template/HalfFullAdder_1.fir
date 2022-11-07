circuit HalfFullAdder_1 :
  module HalfFullAdder_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip carryIn : UInt<0>, s : UInt<1>, carryOut : UInt<1>}

    node _sum_T = add(io.a, io.b) @[halffulladder_1.scala 13:18]
    node sum = add(_sum_T, io.carryIn) @[halffulladder_1.scala 13:26]
    node _io_s_T = bits(sum, 0, 0) @[halffulladder_1.scala 14:14]
    io.s <= _io_s_T @[halffulladder_1.scala 14:8]
    node _io_carryOut_T = bits(sum, 1, 1) @[halffulladder_1.scala 15:21]
    io.carryOut <= _io_carryOut_T @[halffulladder_1.scala 15:15]

