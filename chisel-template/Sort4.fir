circuit Sort4 :
  module Sort4 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in0 : UInt<16>, flip in1 : UInt<16>, flip in2 : UInt<16>, flip in3 : UInt<16>, out0 : UInt<16>, out1 : UInt<16>, out2 : UInt<16>, out3 : UInt<16>}

    wire row10 : UInt<16> @[wire.scala 19:19]
    wire row11 : UInt<16> @[wire.scala 20:19]
    wire row12 : UInt<16> @[wire.scala 21:19]
    wire row13 : UInt<16> @[wire.scala 22:19]
    node _T = lt(io.in0, io.in1) @[wire.scala 24:15]
    when _T : @[wire.scala 24:25]
      row10 <= io.in0 @[wire.scala 25:11]
      row11 <= io.in1 @[wire.scala 26:11]
    else :
      row10 <= io.in1 @[wire.scala 28:11]
      row11 <= io.in0 @[wire.scala 29:11]
    node _T_1 = lt(io.in2, io.in3) @[wire.scala 32:15]
    when _T_1 : @[wire.scala 32:25]
      row12 <= io.in2 @[wire.scala 33:11]
      row13 <= io.in3 @[wire.scala 34:11]
    else :
      row12 <= io.in3 @[wire.scala 36:11]
      row13 <= io.in2 @[wire.scala 37:11]
    wire row21 : UInt<16> @[wire.scala 40:19]
    wire row22 : UInt<16> @[wire.scala 41:19]
    node _T_2 = lt(row11, row12) @[wire.scala 43:14]
    when _T_2 : @[wire.scala 43:23]
      row21 <= row11 @[wire.scala 44:11]
      row22 <= row12 @[wire.scala 45:11]
    else :
      row21 <= row12 @[wire.scala 47:11]
      row22 <= row11 @[wire.scala 48:11]
    wire row20 : UInt<16> @[wire.scala 51:19]
    wire row23 : UInt<16> @[wire.scala 52:19]
    node _T_3 = lt(row10, row13) @[wire.scala 53:14]
    when _T_3 : @[wire.scala 53:23]
      row20 <= row10 @[wire.scala 54:11]
      row23 <= row13 @[wire.scala 55:11]
    else :
      row20 <= row13 @[wire.scala 57:11]
      row23 <= row10 @[wire.scala 58:11]
    node _T_4 = lt(row20, row21) @[wire.scala 61:14]
    when _T_4 : @[wire.scala 61:23]
      io.out0 <= row20 @[wire.scala 62:13]
      io.out1 <= row21 @[wire.scala 63:13]
    else :
      io.out0 <= row21 @[wire.scala 65:13]
      io.out1 <= row20 @[wire.scala 66:13]
    node _T_5 = lt(row22, row23) @[wire.scala 69:14]
    when _T_5 : @[wire.scala 69:23]
      io.out2 <= row22 @[wire.scala 70:13]
      io.out3 <= row23 @[wire.scala 71:13]
    else :
      io.out2 <= row23 @[wire.scala 73:13]
      io.out3 <= row22 @[wire.scala 74:13]

