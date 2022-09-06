circuit Comb :
  module Comb :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : SInt<12>, out : SInt<12>}

    reg delay : SInt<12>, clock with :
      reset => (UInt<1>("h0"), delay) @[regtype.scala 13:24]
    delay <= io.in @[regtype.scala 14:9]
    node _io_out_T = sub(io.in, delay) @[regtype.scala 15:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[regtype.scala 15:19]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[regtype.scala 15:19]
    io.out <= _io_out_T_2 @[regtype.scala 15:10]

