circuit LastConnect :
  module LastConnect :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<4>, out : UInt<4>}

    io.out <= UInt<1>("h1") @[lastde.scala 11:10]
    io.out <= UInt<2>("h2") @[lastde.scala 12:10]
    io.out <= UInt<2>("h3") @[lastde.scala 13:10]
    io.out <= UInt<3>("h4") @[lastde.scala 14:10]

