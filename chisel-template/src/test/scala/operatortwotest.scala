

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class operatortwotest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "operator"
  it should "pass" in {
      test(new MyOperatorsTwo) { c =>
                                               c.io.out_mux.expect(3.U)
                                               c.io.out_cat.expect(5.U)
                                                                               }
                                               println("SUCCESS!!")
  }

}