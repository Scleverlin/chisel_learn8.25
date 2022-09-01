circuit Sort4 :
  module Sort4 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<16>
    input io_in1 : UInt<16>
    input io_in2 : UInt<16>
    input io_in3 : UInt<16>
    output io_out0 : UInt<16>
    output io_out1 : UInt<16>
    output io_out2 : UInt<16>
    output io_out3 : UInt<16>

    node _T = lt(io_in0, io_in1) @[wire.scala 24:15]
    node _GEN_0 = mux(_T, io_in0, io_in1) @[wire.scala 24:25 25:11 28:11]
    node _GEN_1 = mux(_T, io_in1, io_in0) @[wire.scala 24:25 26:11 29:11]
    node _T_1 = lt(io_in2, io_in3) @[wire.scala 32:15]
    node _GEN_2 = mux(_T_1, io_in2, io_in3) @[wire.scala 32:25 33:11 36:11]
    node _GEN_3 = mux(_T_1, io_in3, io_in2) @[wire.scala 32:25 34:11 37:11]
    node row11 = _GEN_1 @[wire.scala 20:19]
    node row12 = _GEN_2 @[wire.scala 21:19]
    node _T_2 = lt(row11, row12) @[wire.scala 43:14]
    node _GEN_4 = mux(_T_2, row11, row12) @[wire.scala 43:23 44:11 47:11]
    node _GEN_5 = mux(_T_2, row12, row11) @[wire.scala 43:23 45:11 48:11]
    node row10 = _GEN_0 @[wire.scala 19:19]
    node row13 = _GEN_3 @[wire.scala 22:19]
    node _T_3 = lt(row10, row13) @[wire.scala 53:14]
    node _GEN_6 = mux(_T_3, row10, row13) @[wire.scala 53:23 54:11 57:11]
    node _GEN_7 = mux(_T_3, row13, row10) @[wire.scala 53:23 55:11 58:11]
    node row20 = _GEN_6 @[wire.scala 51:19]
    node row21 = _GEN_4 @[wire.scala 40:19]
    node _T_4 = lt(row20, row21) @[wire.scala 61:14]
    node _GEN_8 = mux(_T_4, row20, row21) @[wire.scala 61:23 62:13 65:13]
    node _GEN_9 = mux(_T_4, row21, row20) @[wire.scala 61:23 63:13 66:13]
    node row22 = _GEN_5 @[wire.scala 41:19]
    node row23 = _GEN_7 @[wire.scala 52:19]
    node _T_5 = lt(row22, row23) @[wire.scala 69:14]
    node _GEN_10 = mux(_T_5, row22, row23) @[wire.scala 69:23 70:13 73:13]
    node _GEN_11 = mux(_T_5, row23, row22) @[wire.scala 69:23 71:13 74:13]
    io_out0 <= _GEN_8
    io_out1 <= _GEN_9
    io_out2 <= _GEN_10
    io_out3 <= _GEN_11
