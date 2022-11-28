circuit MyManyElementFir :
  module MyManyElementFir :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<4>, out : UInt<4>}

    reg regs_1 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[reconfigurableFIR.scala 16:33]
    regs_1 <= io.in @[reconfigurableFIR.scala 16:33]
    reg regs_2 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[reconfigurableFIR.scala 16:33]
    regs_2 <= regs_1 @[reconfigurableFIR.scala 16:33]
    reg regs_3 : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[reconfigurableFIR.scala 16:33]
    regs_3 <= regs_2 @[reconfigurableFIR.scala 16:33]
    node muls_0 = mul(io.in, UInt<1>("h1")) @[reconfigurableFIR.scala 21:23]
    node muls_1 = mul(regs_1, UInt<2>("h2")) @[reconfigurableFIR.scala 21:23]
    node muls_2 = mul(regs_2, UInt<2>("h3")) @[reconfigurableFIR.scala 21:23]
    node muls_3 = mul(regs_3, UInt<3>("h4")) @[reconfigurableFIR.scala 21:23]
    node _T = add(muls_1, muls_0) @[reconfigurableFIR.scala 27:28]
    node scan_1 = tail(_T, 1) @[reconfigurableFIR.scala 27:28]
    node _T_1 = add(muls_2, scan_1) @[reconfigurableFIR.scala 27:28]
    node scan_2 = tail(_T_1, 1) @[reconfigurableFIR.scala 27:28]
    node _T_2 = add(muls_3, scan_2) @[reconfigurableFIR.scala 27:28]
    node scan_3 = tail(_T_2, 1) @[reconfigurableFIR.scala 27:28]
    io.out <= scan_3 @[reconfigurableFIR.scala 30:10]

