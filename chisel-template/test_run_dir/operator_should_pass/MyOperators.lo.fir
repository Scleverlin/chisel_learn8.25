circuit MyOperators :
  module MyOperators :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out_add : UInt<4>
    output io_out_sub : UInt<4>
    output io_out_mul : UInt<4>

    node _io_out_add_T = add(UInt<1>("h1"), UInt<3>("h4")) @[operator.scala 14:33]
    node _io_out_add_T_1 = tail(_io_out_add_T, 1) @[operator.scala 14:33]
    node _io_out_sub_T = sub(UInt<2>("h2"), UInt<1>("h1")) @[operator.scala 15:33]
    node _io_out_sub_T_1 = tail(_io_out_sub_T, 1) @[operator.scala 15:33]
    node _io_out_mul_T = mul(UInt<3>("h4"), UInt<2>("h2")) @[operator.scala 16:33]
    io_out_add <= pad(_io_out_add_T_1, 4) @[operator.scala 14:26]
    io_out_sub <= pad(_io_out_sub_T_1, 4) @[operator.scala 15:26]
    io_out_mul <= bits(_io_out_mul_T, 3, 0) @[operator.scala 16:26]
