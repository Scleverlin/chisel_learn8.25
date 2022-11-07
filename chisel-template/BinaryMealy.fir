circuit BinaryMealy :
  module BinaryMealy :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<1>, out : UInt}

    reg state : UInt, clock with :
      reset => (reset, UInt<2>("h2")) @[mealy.scala 28:22]
    io.out <= UInt<1>("h0") @[mealy.scala 31:10]
    node _T = eq(state, UInt<1>("h0")) @[mealy.scala 33:17]
    when _T : @[mealy.scala 33:26]
      when io.in : @[mealy.scala 34:20]
        state <= UInt<1>("h1") @[mealy.scala 35:16]
        io.out <= UInt<1>("h1") @[mealy.scala 36:16]
      else :
        state <= UInt<1>("h0") @[mealy.scala 38:16]
        io.out <= UInt<1>("h0") @[mealy.scala 39:16]
    node _T_1 = eq(state, UInt<1>("h1")) @[mealy.scala 33:17]
    when _T_1 : @[mealy.scala 33:26]
      when io.in : @[mealy.scala 34:20]
        state <= UInt<1>("h1") @[mealy.scala 35:16]
        io.out <= UInt<1>("h0") @[mealy.scala 36:16]
      else :
        state <= UInt<1>("h0") @[mealy.scala 38:16]
        io.out <= UInt<1>("h1") @[mealy.scala 39:16]
    node _T_2 = eq(state, UInt<2>("h2")) @[mealy.scala 33:17]
    when _T_2 : @[mealy.scala 33:26]
      when io.in : @[mealy.scala 34:20]
        state <= UInt<1>("h1") @[mealy.scala 35:16]
        io.out <= UInt<1>("h0") @[mealy.scala 36:16]
      else :
        state <= UInt<1>("h0") @[mealy.scala 38:16]
        io.out <= UInt<1>("h0") @[mealy.scala 39:16]

