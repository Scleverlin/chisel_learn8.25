circuit GradLife :
  module GradLife :
    input clock : Clock
    input reset : UInt<1>
    input io_state : UInt<2>
    input io_coffee : UInt<1>
    input io_idea : UInt<1>
    input io_pressure : UInt<1>
    output io_nextState : UInt<2>

    node _T = eq(io_state, UInt<2>("h0")) @[gradlife.scala 22:18]
    node _GEN_0 = mux(io_pressure, UInt<2>("h2"), UInt<2>("h0")) @[gradlife.scala 20:18 29:{20,5}]
    node _GEN_1 = mux(io_idea, UInt<2>("h0"), _GEN_0) @[gradlife.scala 27:{20,5}]
    node _GEN_2 = mux(io_coffee, UInt<2>("h1"), _GEN_1) @[gradlife.scala 25:{20,5}]
    node _T_1 = eq(io_state, UInt<2>("h1")) @[gradlife.scala 31:25]
    node _T_2 = or(io_idea, io_pressure) @[gradlife.scala 34:24]
    node _GEN_3 = mux(_T_2, UInt<2>("h2"), UInt<2>("h0")) @[gradlife.scala 20:18 35:{21,6}]
    node _GEN_4 = mux(io_coffee, UInt<2>("h1"), _GEN_3) @[gradlife.scala 33:{20,5}]
    node _T_3 = eq(io_state, UInt<2>("h2")) @[gradlife.scala 37:25]
    node _T_4 = or(io_coffee, io_idea) @[gradlife.scala 38:26]
    node _GEN_5 = mux(io_pressure, UInt<2>("h3"), UInt<2>("h0")) @[gradlife.scala 20:18 41:{21,6}]
    node _GEN_6 = mux(_T_4, UInt<2>("h2"), _GEN_5) @[gradlife.scala 39:{20,5}]
    node _GEN_7 = mux(_T_3, _GEN_6, UInt<2>("h0")) @[gradlife.scala 20:18 37:38]
    node _GEN_8 = mux(_T_1, _GEN_4, _GEN_7) @[gradlife.scala 31:37]
    node _GEN_9 = mux(_T, _GEN_2, _GEN_8) @[gradlife.scala 22:28]
    io_nextState <= _GEN_9
