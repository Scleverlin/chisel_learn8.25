circuit Max3 :
  module Max3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in1 : UInt<16>
    input io_in2 : UInt<16>
    input io_in3 : UInt<16>
    output io_out : UInt<16>

    node _T = geq(io_in1, io_in2) @[max3.scala 16:15]
    node _T_1 = geq(io_in1, io_in3) @[max3.scala 16:35]
    node _T_2 = and(_T, _T_1) @[max3.scala 16:25]
    node _T_3 = geq(io_in2, io_in3) @[max3.scala 18:21]
    node _GEN_0 = mux(_T_3, io_in2, io_in3) @[max3.scala 18:32 19:12 21:12]
    node _GEN_1 = mux(_T_2, io_in1, _GEN_0) @[max3.scala 16:46 17:12]
    io_out <= _GEN_1
