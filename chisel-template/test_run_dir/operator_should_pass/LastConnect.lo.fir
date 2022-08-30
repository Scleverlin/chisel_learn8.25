circuit LastConnect :
  module LastConnect :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<4>

    io_out <= UInt<4>("h4") @[lastde.scala 14:10]
