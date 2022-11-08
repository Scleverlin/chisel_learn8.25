circuit My4ElementFir :
  module My4ElementFir :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<8>, out : UInt<8>}

    reg x_n1 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[fir.scala 12:21]
    x_n1 <= io.in @[fir.scala 12:21]
    reg x_n2 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[fir.scala 13:21]
    x_n2 <= x_n1 @[fir.scala 13:21]
    reg x_n3 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[fir.scala 14:21]
    x_n3 <= x_n2 @[fir.scala 14:21]
    node _io_out_T = mul(io.in, UInt<8>("h1")) @[fir.scala 15:19]
    node _io_out_T_1 = mul(x_n1, UInt<8>("h2")) @[fir.scala 15:38]
    node _io_out_T_2 = add(_io_out_T, _io_out_T_1) @[fir.scala 15:31]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[fir.scala 15:31]
    node _io_out_T_4 = mul(x_n2, UInt<8>("h3")) @[fir.scala 16:10]
    node _io_out_T_5 = add(_io_out_T_3, _io_out_T_4) @[fir.scala 15:50]
    node _io_out_T_6 = tail(_io_out_T_5, 1) @[fir.scala 15:50]
    node _io_out_T_7 = mul(x_n3, UInt<8>("h4")) @[fir.scala 16:29]
    node _io_out_T_8 = add(_io_out_T_6, _io_out_T_7) @[fir.scala 16:22]
    node _io_out_T_9 = tail(_io_out_T_8, 1) @[fir.scala 16:22]
    io.out <= _io_out_T_9 @[fir.scala 15:10]

