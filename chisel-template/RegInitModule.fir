circuit RegInitModule :
  module RegInitModule :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<12>, out : UInt<12>}

    reg register : UInt<12>, clock with :
      reset => (reset, UInt<12>("h0")) @[reginit.scala 15:25]
    node _register_T = add(io.in, UInt<1>("h1")) @[reginit.scala 16:21]
    node _register_T_1 = tail(_register_T, 1) @[reginit.scala 16:21]
    register <= _register_T_1 @[reginit.scala 16:12]
    io.out <= register @[reginit.scala 17:10]

