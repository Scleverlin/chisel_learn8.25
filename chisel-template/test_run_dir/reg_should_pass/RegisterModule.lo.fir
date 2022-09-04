circuit RegisterModule :
  module RegisterModule :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<12>
    output io_out : UInt<12>

    reg register : UInt<12>, clock with :
      reset => (UInt<1>("h0"), register) @[reg.scala 15:21]
    node _register_T = add(io_in, UInt<1>("h1")) @[reg.scala 16:21]
    node _register_T_1 = tail(_register_T, 1) @[reg.scala 16:21]
    io_out <= register @[reg.scala 17:10]
    register <= _register_T_1 @[reg.scala 16:12]
