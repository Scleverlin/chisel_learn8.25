circuit MyOperatorsTwo :
  module MyOperatorsTwo :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out_mux : UInt<4>
    output io_out_cat : UInt<4>

    node _io_out_mux_T = mux(UInt<1>("h1"), UInt<2>("h3"), UInt<1>("h0")) @[operatortwo.scala 15:53]
    node _io_out_cat_T = cat(UInt<2>("h2"), UInt<1>("h1")) @[Cat.scala 31:58]
    io_out_mux <= pad(_io_out_mux_T, 4) @[operatortwo.scala 15:47]
    io_out_cat <= pad(_io_out_cat_T, 4) @[operatortwo.scala 16:47]
