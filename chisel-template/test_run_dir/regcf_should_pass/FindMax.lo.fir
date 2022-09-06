circuit FindMax :
  module FindMax :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<10>
    output io_max : UInt<10>

    reg max : UInt<10>, clock with :
      reset => (UInt<1>("h0"), max) @[regcf.scala 12:20]
    node _T = gt(io_in, max) @[regcf.scala 13:15]
    node _GEN_0 = mux(_T, io_in, max) @[regcf.scala 12:20 13:22 14:9]
    io_max <= max @[regcf.scala 16:10]
    max <= mux(reset, UInt<10>("h0"), _GEN_0) @[regcf.scala 12:{20,20}]
