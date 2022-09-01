import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Polynomialtest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Polynomial"
  it should "pass" in {

def poly0(x: Int): Int = x*x - 2*x + 1
def poly1(x: Int): Int = 2*x*x + 6*x + 3
def poly2(x: Int): Int = 4*x*x - 10*x - 5

def poly(select: Int, x: Int): Int = {
  if(select == 0) {
    poly0(x)
  }
  else if(select == 1) {
    poly1(x)
  }
  else {
    poly2(x)
  }
}

test(new Polynomial) { c =>
  for(x <- 0 to 20) {
    for(select <- 0 to 2) {
      c.io.select.poke(select.U)
      c.io.x.poke(x.S)
      c.io.fOfX.expect(poly(select, x).S)
    }
  }
}
println("SUCCESS!!") // Scala Code: if we get here, our tests passed!
  }
}
