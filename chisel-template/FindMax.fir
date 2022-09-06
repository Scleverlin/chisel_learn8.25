circuit FindMax :
  module FindMax :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<10>, max : UInt<10>}

    reg max : UInt<10>, clock with :
      reset => (reset, UInt<10>("h0")) @[regcf.scala 12:20]
    node _T = gt(io.in, max) @[regcf.scala 13:15]
    when _T : @[regcf.scala 13:22]
      max <= io.in @[regcf.scala 14:9]
    io.max <= max @[regcf.scala 16:10]

