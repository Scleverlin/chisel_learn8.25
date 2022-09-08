circuit MyShiftRegister :
  module MyShiftRegister :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<1>, out : UInt<4>}

    reg state : UInt<4>, clock with :
      reset => (reset, UInt<1>("h1")) @[shifter.scala 12:22]
    node _nextState_T = shl(state, 1) @[shifter.scala 14:26]
    node nextState = or(_nextState_T, io.in) @[shifter.scala 14:32]
    state <= nextState @[shifter.scala 15:9]
    io.out <= state @[shifter.scala 16:10]

