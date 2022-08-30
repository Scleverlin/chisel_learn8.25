import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class operatortest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "operator"
  it should "pass" in {
      test(new MyOperators) {c =>
                 c.io.out_add.expect(5.U)
                 c.io.out_sub.expect(1.U)
                 c.io.out_mul.expect(8.U)
       }

         println("SUCCESS!!")
    }
  }
