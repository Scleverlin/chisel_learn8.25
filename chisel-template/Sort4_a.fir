circuit Sort4_a :
  module Sort4_a :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in0 : UInt<16>, flip in1 : UInt<16>, flip in2 : UInt<16>, flip in3 : UInt<16>, out0 : UInt<16>, out1 : UInt<16>, out2 : UInt<16>, out3 : UInt<16>}

    wire row10 : UInt<16> @[sort4.scala 28:19]
    wire row11 : UInt<16> @[sort4.scala 29:19]
    wire row12 : UInt<16> @[sort4.scala 30:19]
    wire row13 : UInt<16> @[sort4.scala 31:19]
    node _T = lt(io.in0, io.in1) @[sort4.scala 22:11]
    when _T : @[sort4.scala 33:30]
      row10 <= io.in0 @[sort4.scala 34:11]
      row11 <= io.in1 @[sort4.scala 35:11]
    else :
      row10 <= io.in1 @[sort4.scala 37:11]
      row11 <= io.in0 @[sort4.scala 38:11]
    node _T_1 = lt(io.in2, io.in3) @[sort4.scala 22:11]
    when _T_1 : @[sort4.scala 41:30]
      row12 <= io.in2 @[sort4.scala 42:11]
      row13 <= io.in3 @[sort4.scala 43:11]
    else :
      row12 <= io.in3 @[sort4.scala 45:11]
      row13 <= io.in2 @[sort4.scala 46:11]
    wire row21 : UInt<16> @[sort4.scala 49:19]
    wire row22 : UInt<16> @[sort4.scala 50:19]
    node _T_2 = lt(row11, row12) @[sort4.scala 22:11]
    when _T_2 : @[sort4.scala 52:28]
      row21 <= row11 @[sort4.scala 53:11]
      row22 <= row12 @[sort4.scala 54:11]
    else :
      row21 <= row12 @[sort4.scala 56:11]
      row22 <= row11 @[sort4.scala 57:11]
    wire row20 : UInt<16> @[sort4.scala 60:19]
    wire row23 : UInt<16> @[sort4.scala 61:19]
    node _T_3 = lt(row10, row13) @[sort4.scala 22:11]
    when _T_3 : @[sort4.scala 62:28]
      row20 <= row10 @[sort4.scala 63:11]
      row23 <= row13 @[sort4.scala 64:11]
    else :
      row20 <= row13 @[sort4.scala 66:11]
      row23 <= row10 @[sort4.scala 67:11]
    node _T_4 = lt(row20, row21) @[sort4.scala 22:11]
    when _T_4 : @[sort4.scala 70:28]
      io.out0 <= row20 @[sort4.scala 71:13]
      io.out1 <= row21 @[sort4.scala 72:13]
    else :
      io.out0 <= row21 @[sort4.scala 74:13]
      io.out1 <= row20 @[sort4.scala 75:13]
    node _T_5 = lt(row22, row23) @[sort4.scala 22:11]
    when _T_5 : @[sort4.scala 78:28]
      io.out2 <= row22 @[sort4.scala 79:13]
      io.out3 <= row23 @[sort4.scala 80:13]
    else :
      io.out2 <= row23 @[sort4.scala 82:13]
      io.out3 <= row22 @[sort4.scala 83:13]

