circuit RippleCarryAdder_seq :
  module FullAdder :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module FullAdder_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip cin : UInt<1>, sum : UInt<1>, cout : UInt<1>}

    node _io_sum_T = xor(io.a, io.b) @[rca.scala 14:18]
    node _io_sum_T_1 = xor(_io_sum_T, io.cin) @[rca.scala 14:25]
    io.sum <= _io_sum_T_1 @[rca.scala 14:10]
    node _io_cout_T = and(io.a, io.b) @[rca.scala 15:20]
    node _io_cout_T_1 = and(io.a, io.cin) @[rca.scala 15:36]
    node _io_cout_T_2 = or(_io_cout_T, _io_cout_T_1) @[rca.scala 15:28]
    node _io_cout_T_3 = and(io.b, io.cin) @[rca.scala 15:54]
    node _io_cout_T_4 = or(_io_cout_T_2, _io_cout_T_3) @[rca.scala 15:46]
    io.cout <= _io_cout_T_4 @[rca.scala 15:11]

  module RippleCarryAdder_seq :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<8>, flip b : UInt<8>, sum : UInt<1>[8], cout : UInt<1>}

    inst FullAdder of FullAdder @[rca.scala 51:40]
    FullAdder.clock <= clock
    FullAdder.reset <= reset
    inst FullAdder_1 of FullAdder_1 @[rca.scala 51:40]
    FullAdder_1.clock <= clock
    FullAdder_1.reset <= reset
    inst FullAdder_2 of FullAdder_2 @[rca.scala 51:40]
    FullAdder_2.clock <= clock
    FullAdder_2.reset <= reset
    inst FullAdder_3 of FullAdder_3 @[rca.scala 51:40]
    FullAdder_3.clock <= clock
    FullAdder_3.reset <= reset
    inst FullAdder_4 of FullAdder_4 @[rca.scala 51:40]
    FullAdder_4.clock <= clock
    FullAdder_4.reset <= reset
    inst FullAdder_5 of FullAdder_5 @[rca.scala 51:40]
    FullAdder_5.clock <= clock
    FullAdder_5.reset <= reset
    inst FullAdder_6 of FullAdder_6 @[rca.scala 51:40]
    FullAdder_6.clock <= clock
    FullAdder_6.reset <= reset
    inst FullAdder_7 of FullAdder_7 @[rca.scala 51:40]
    FullAdder_7.clock <= clock
    FullAdder_7.reset <= reset
    wire carry : UInt<1>[9] @[rca.scala 52:19]
    wire _sumReg_WIRE : UInt<1>[8] @[rca.scala 53:31]
    _sumReg_WIRE[0] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[1] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[2] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[3] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[4] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[5] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[6] <= UInt<1>("h0") @[rca.scala 53:31]
    _sumReg_WIRE[7] <= UInt<1>("h0") @[rca.scala 53:31]
    reg sumReg : UInt<1>[8], clock with :
      reset => (reset, _sumReg_WIRE) @[rca.scala 53:23]
    carry[0] <= UInt<1>("h0") @[rca.scala 55:12]
    node _T = bits(io.a, 0, 0) @[rca.scala 57:31]
    FullAdder.io.a <= _T @[rca.scala 57:24]
    node _T_1 = bits(io.b, 0, 0) @[rca.scala 58:31]
    FullAdder.io.b <= _T_1 @[rca.scala 58:24]
    FullAdder.io.cin <= carry[0] @[rca.scala 59:26]
    sumReg[0] <= FullAdder.io.sum @[rca.scala 60:15]
    carry[1] <= FullAdder.io.cout @[rca.scala 61:16]
    node _T_2 = bits(io.a, 1, 1) @[rca.scala 57:31]
    FullAdder_1.io.a <= _T_2 @[rca.scala 57:24]
    node _T_3 = bits(io.b, 1, 1) @[rca.scala 58:31]
    FullAdder_1.io.b <= _T_3 @[rca.scala 58:24]
    FullAdder_1.io.cin <= carry[1] @[rca.scala 59:26]
    sumReg[1] <= FullAdder_1.io.sum @[rca.scala 60:15]
    carry[2] <= FullAdder_1.io.cout @[rca.scala 61:16]
    node _T_4 = bits(io.a, 2, 2) @[rca.scala 57:31]
    FullAdder_2.io.a <= _T_4 @[rca.scala 57:24]
    node _T_5 = bits(io.b, 2, 2) @[rca.scala 58:31]
    FullAdder_2.io.b <= _T_5 @[rca.scala 58:24]
    FullAdder_2.io.cin <= carry[2] @[rca.scala 59:26]
    sumReg[2] <= FullAdder_2.io.sum @[rca.scala 60:15]
    carry[3] <= FullAdder_2.io.cout @[rca.scala 61:16]
    node _T_6 = bits(io.a, 3, 3) @[rca.scala 57:31]
    FullAdder_3.io.a <= _T_6 @[rca.scala 57:24]
    node _T_7 = bits(io.b, 3, 3) @[rca.scala 58:31]
    FullAdder_3.io.b <= _T_7 @[rca.scala 58:24]
    FullAdder_3.io.cin <= carry[3] @[rca.scala 59:26]
    sumReg[3] <= FullAdder_3.io.sum @[rca.scala 60:15]
    carry[4] <= FullAdder_3.io.cout @[rca.scala 61:16]
    node _T_8 = bits(io.a, 4, 4) @[rca.scala 57:31]
    FullAdder_4.io.a <= _T_8 @[rca.scala 57:24]
    node _T_9 = bits(io.b, 4, 4) @[rca.scala 58:31]
    FullAdder_4.io.b <= _T_9 @[rca.scala 58:24]
    FullAdder_4.io.cin <= carry[4] @[rca.scala 59:26]
    sumReg[4] <= FullAdder_4.io.sum @[rca.scala 60:15]
    carry[5] <= FullAdder_4.io.cout @[rca.scala 61:16]
    node _T_10 = bits(io.a, 5, 5) @[rca.scala 57:31]
    FullAdder_5.io.a <= _T_10 @[rca.scala 57:24]
    node _T_11 = bits(io.b, 5, 5) @[rca.scala 58:31]
    FullAdder_5.io.b <= _T_11 @[rca.scala 58:24]
    FullAdder_5.io.cin <= carry[5] @[rca.scala 59:26]
    sumReg[5] <= FullAdder_5.io.sum @[rca.scala 60:15]
    carry[6] <= FullAdder_5.io.cout @[rca.scala 61:16]
    node _T_12 = bits(io.a, 6, 6) @[rca.scala 57:31]
    FullAdder_6.io.a <= _T_12 @[rca.scala 57:24]
    node _T_13 = bits(io.b, 6, 6) @[rca.scala 58:31]
    FullAdder_6.io.b <= _T_13 @[rca.scala 58:24]
    FullAdder_6.io.cin <= carry[6] @[rca.scala 59:26]
    sumReg[6] <= FullAdder_6.io.sum @[rca.scala 60:15]
    carry[7] <= FullAdder_6.io.cout @[rca.scala 61:16]
    node _T_14 = bits(io.a, 7, 7) @[rca.scala 57:31]
    FullAdder_7.io.a <= _T_14 @[rca.scala 57:24]
    node _T_15 = bits(io.b, 7, 7) @[rca.scala 58:31]
    FullAdder_7.io.b <= _T_15 @[rca.scala 58:24]
    FullAdder_7.io.cin <= carry[7] @[rca.scala 59:26]
    sumReg[7] <= FullAdder_7.io.sum @[rca.scala 60:15]
    carry[8] <= FullAdder_7.io.cout @[rca.scala 61:16]
    io.cout <= carry[8] @[rca.scala 64:11]
    io.sum <= sumReg @[rca.scala 65:10]

