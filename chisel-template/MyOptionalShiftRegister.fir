circuit MyOptionalShiftRegister :
  module MyOptionalShiftRegister :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip en : UInt<1>, flip in : UInt<1>, out : UInt<8>}

    reg state : UInt<8>, clock with :
      reset => (reset, UInt<8>("h1")) @[parshifter.scala 11:22]
    node _nextState_T = shl(state, 1) @[parshifter.scala 13:26]
    node nextState = or(_nextState_T, io.in) @[parshifter.scala 13:32]
    when io.en : @[parshifter.scala 14:16]
      state <= nextState @[parshifter.scala 15:12]
    io.out <= state @[parshifter.scala 17:10]

