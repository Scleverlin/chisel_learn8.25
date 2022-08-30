import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class lastdetest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "operator"
 it should "pass" in {
test(new LastConnect) { c => c.io.out.expect(4.U) } // Assert that the output correctly has 4
println("SUCCESS!!") // Scala Code: if we get here, our tests passed!
 }
}
