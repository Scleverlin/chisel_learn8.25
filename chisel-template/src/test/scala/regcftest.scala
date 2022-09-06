
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class regcftest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "regcf"
  it should "pass" in {
test(new FindMax) { c =>
    c.io.max.expect(0.U)
    c.io.in.poke(1.U)
    c.clock.step(1)
    c.io.max.expect(1.U)
    c.io.in.poke(3.U)
    c.clock.step(1)
    c.io.max.expect(3.U)
    c.io.in.poke(2.U)
    c.clock.step(1)
    c.io.max.expect(3.U)
    c.io.in.poke(24.U)
    c.clock.step(1)
    c.io.max.expect(24.U)
}
println("SUCCESS!!")
  }
}
