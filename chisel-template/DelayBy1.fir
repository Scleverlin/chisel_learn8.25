circuit DelayBy1 :
  module DelayBy1 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<16>, out : UInt<16>}

    reg reg : UInt, clock with :
      reset => (reset, UInt<2>("h3")) @[option.scala 11:16]
    reg <= io.in @[option.scala 15:9]
    io.out <= reg @[option.scala 16:12]

