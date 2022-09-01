
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Sort4test extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "sort4"
  it should "pass " in {

test(new Sort4) { c =>
  // verify the inputs are sorted
  c.io.in0.poke(3.U)
  c.io.in1.poke(6.U)
  c.io.in2.poke(9.U)
  c.io.in3.poke(12.U)
  c.io.out0.expect(3.U)
  c.io.out1.expect(6.U)
  c.io.out2.expect(9.U)
  c.io.out3.expect(12.U)

  c.io.in0.poke(13.U)
  c.io.in1.poke(4.U)
  c.io.in2.poke(6.U)
  c.io.in3.poke(1.U)
  c.io.out0.expect(1.U)
  c.io.out1.expect(4.U)
  c.io.out2.expect(6.U)
  c.io.out3.expect(13.U)

  c.io.in0.poke(13.U)
  c.io.in1.poke(6.U)
  c.io.in2.poke(4.U)
  c.io.in3.poke(1.U)
  c.io.out0.expect(1.U)
  c.io.out1.expect(4.U)
  c.io.out2.expect(6.U)
  c.io.out3.expect(13.U)
}
println("SUCCESS!!") // Scala Code: if we get here, our tests passed!

  }}
  