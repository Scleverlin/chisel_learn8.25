circuit Polynomial :
  module Polynomial :
    input clock : Clock
    input reset : UInt<1>
    input io_select : UInt<2>
    input io_x : SInt<32>
    output io_fOfX : SInt<32>

    node _square_T = mul(io_x, io_x) @[poly.scala 20:18]
    node _T = eq(io_select, UInt<1>("h0")) @[poly.scala 21:18]
    node _result_T = mul(asSInt(UInt<3>("h2")), io_x) @[poly.scala 22:30]
    node square = asSInt(bits(_square_T, 31, 0)) @[poly.scala 19:20 20:10]
    node _result_T_1 = sub(square, _result_T) @[poly.scala 22:23]
    node _result_T_2 = tail(_result_T_1, 1) @[poly.scala 22:23]
    node _result_T_3 = asSInt(_result_T_2) @[poly.scala 22:23]
    node _result_T_4 = add(_result_T_3, asSInt(UInt<2>("h1"))) @[poly.scala 22:39]
    node _result_T_5 = tail(_result_T_4, 1) @[poly.scala 22:39]
    node _result_T_6 = asSInt(_result_T_5) @[poly.scala 22:39]
    node _T_1 = eq(io_select, UInt<1>("h1")) @[poly.scala 23:24]
    node _result_T_7 = mul(asSInt(UInt<3>("h2")), square) @[poly.scala 24:20]
    node _result_T_8 = mul(asSInt(UInt<4>("h6")), io_x) @[poly.scala 24:37]
    node _result_T_9 = add(_result_T_7, _result_T_8) @[poly.scala 24:30]
    node _result_T_10 = tail(_result_T_9, 1) @[poly.scala 24:30]
    node _result_T_11 = asSInt(_result_T_10) @[poly.scala 24:30]
    node _result_T_12 = add(_result_T_11, asSInt(UInt<3>("h3"))) @[poly.scala 24:45]
    node _result_T_13 = tail(_result_T_12, 1) @[poly.scala 24:45]
    node _result_T_14 = asSInt(_result_T_13) @[poly.scala 24:45]
    node _result_T_15 = mul(asSInt(UInt<4>("h4")), square) @[poly.scala 26:20]
    node _result_T_16 = mul(asSInt(UInt<5>("ha")), io_x) @[poly.scala 26:38]
    node _result_T_17 = sub(_result_T_15, _result_T_16) @[poly.scala 26:30]
    node _result_T_18 = tail(_result_T_17, 1) @[poly.scala 26:30]
    node _result_T_19 = asSInt(_result_T_18) @[poly.scala 26:30]
    node _result_T_20 = sub(_result_T_19, asSInt(UInt<4>("h5"))) @[poly.scala 26:46]
    node _result_T_21 = tail(_result_T_20, 1) @[poly.scala 26:46]
    node _result_T_22 = asSInt(_result_T_21) @[poly.scala 26:46]
    node _GEN_0 = mux(_T_1, _result_T_14, _result_T_22) @[poly.scala 23:33 24:12 26:12]
    node _GEN_1 = mux(_T, _result_T_6, _GEN_0) @[poly.scala 21:27 22:12]
    node result = asSInt(bits(_GEN_1, 31, 0)) @[poly.scala 18:20]
    io_fOfX <= result @[poly.scala 29:11]
