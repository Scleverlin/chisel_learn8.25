circuit DelayBy1_1 :
  module DelayBy1_1 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<16>, out : UInt<16>}

    reg reg : UInt, clock with :
      reset => (UInt<1>("h0"), reg) @[delayby1.scala 13:24]
    reg <= io.in @[delayby1.scala 15:7]
    io.out <= reg @[delayby1.scala 16:10]

