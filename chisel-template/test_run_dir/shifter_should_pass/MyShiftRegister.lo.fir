circuit MyShiftRegister :
  module MyShiftRegister :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<1>
    output io_out : UInt<4>

    reg state : UInt<4>, clock with :
      reset => (UInt<1>("h0"), state) @[shifter.scala 12:22]
    node _nextState_T = shl(state, 1) @[shifter.scala 14:26]
    node nextState = or(_nextState_T, io_in) @[shifter.scala 14:32]
    io_out <= state @[shifter.scala 16:10]
    state <= bits(mux(reset, UInt<1>("h1"), nextState), 3, 0) @[shifter.scala 12:{22,22} 15:9]
