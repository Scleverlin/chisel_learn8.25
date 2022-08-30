circuit Max3 :
  module Max3 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in1 : UInt<16>, flip in2 : UInt<16>, flip in3 : UInt<16>, out : UInt<16>}

    node _T = geq(io.in1, io.in2) @[max3.scala 16:15]
    node _T_1 = geq(io.in1, io.in3) @[max3.scala 16:35]
    node _T_2 = and(_T, _T_1) @[max3.scala 16:25]
    when _T_2 : @[max3.scala 16:46]
      io.out <= io.in1 @[max3.scala 17:12]
    else :
      node _T_3 = geq(io.in2, io.in3) @[max3.scala 18:21]
      when _T_3 : @[max3.scala 18:32]
        io.out <= io.in2 @[max3.scala 19:12]
      else :
        io.out <= io.in3 @[max3.scala 21:12]

