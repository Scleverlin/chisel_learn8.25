circuit MyOptionalShiftRegister :
  module MyOptionalShiftRegister :
    input clock : Clock
    input reset : UInt<1>
    input io_en : UInt<1>
    input io_in : UInt<1>
    output io_out : UInt<65>

    reg state : UInt<65>, clock with :
      reset => (UInt<1>("h0"), state) @[parshifter.scala 11:22]
    node _nextState_T = shl(state, 1) @[parshifter.scala 13:26]
    node nextState = or(_nextState_T, io_in) @[parshifter.scala 13:32]
    node _GEN_0 = mux(io_en, nextState, state) @[parshifter.scala 14:16 15:12 11:22]
    io_out <= state @[parshifter.scala 17:10]
    state <= bits(mux(reset, UInt<65>("h1"), _GEN_0), 64, 0) @[parshifter.scala 11:{22,22}]
