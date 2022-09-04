circuit GradLife :
  module GradLife :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip state : UInt<2>, flip coffee : UInt<1>, flip idea : UInt<1>, flip pressure : UInt<1>, nextState : UInt<2>}

    io.nextState <= UInt<2>("h0") @[gradlife.scala 20:18]
    node _T = eq(io.state, UInt<2>("h0")) @[gradlife.scala 22:18]
    when _T : @[gradlife.scala 22:28]
      when io.coffee : @[gradlife.scala 25:5]
        io.nextState <= UInt<2>("h1") @[gradlife.scala 25:20]
      else :
        when io.idea : @[gradlife.scala 27:5]
          io.nextState <= UInt<2>("h0") @[gradlife.scala 27:20]
        else :
          when io.pressure : @[gradlife.scala 29:5]
            io.nextState <= UInt<2>("h2") @[gradlife.scala 29:20]
    else :
      node _T_1 = eq(io.state, UInt<2>("h1")) @[gradlife.scala 31:25]
      when _T_1 : @[gradlife.scala 31:37]
        when io.coffee : @[gradlife.scala 33:5]
          io.nextState <= UInt<2>("h1") @[gradlife.scala 33:20]
        else :
          node _T_2 = or(io.idea, io.pressure) @[gradlife.scala 34:24]
          when _T_2 : @[gradlife.scala 35:6]
            io.nextState <= UInt<2>("h2") @[gradlife.scala 35:21]
      else :
        node _T_3 = eq(io.state, UInt<2>("h2")) @[gradlife.scala 37:25]
        when _T_3 : @[gradlife.scala 37:38]
          node _T_4 = or(io.coffee, io.idea) @[gradlife.scala 38:26]
          when _T_4 : @[gradlife.scala 39:5]
            io.nextState <= UInt<2>("h2") @[gradlife.scala 39:20]
          else :
            when io.pressure : @[gradlife.scala 41:6]
              io.nextState <= UInt<2>("h3") @[gradlife.scala 41:21]

