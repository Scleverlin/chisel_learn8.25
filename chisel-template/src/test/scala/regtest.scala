import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class regtest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "reg"
  it should "pass" in {
    test(new RegisterModule) { c =>
  for (i <- 0 until 100) {
    c.io.in.poke(i.U)
    c.clock.step(1)
    c.io.out.expect((i + 1).U)
  }
}
println("SUCCESS!!")
  }
}
