

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class shiftertest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "shifter"
  it should "pass" in {

test(new MyShiftRegister()) { c =>
  var state = c.init
  for (i <- 0 until 10) {
    // poke in LSB of i (i % 2)
    c.io.in.poke(((i % 2) != 0).B)
    // update expected state
    state = ((state * 2) + (i % 2)) & 0xf
    c.clock.step(1)
    c.io.out.expect(state.U)
  }
}
println("SUCCESS!!")
  }
}
