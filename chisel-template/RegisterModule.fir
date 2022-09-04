circuit RegisterModule :
  module RegisterModule :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<12>, out : UInt<12>}

    reg register : UInt<12>, clock with :
      reset => (UInt<1>("h0"), register) @[reg.scala 15:21]
    node _register_T = add(io.in, UInt<1>("h1")) @[reg.scala 16:21]
    node _register_T_1 = tail(_register_T, 1) @[reg.scala 16:21]
    register <= _register_T_1 @[reg.scala 16:12]
    io.out <= register @[reg.scala 17:10]

