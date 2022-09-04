import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec


class gradtest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "gradlife"
  it should "pass" in {
def states = Map("idle" -> 0, "coding" -> 1, "writing" -> 2, "grad" -> 3)

def gradLife (state: Int, coffee: Boolean, idea: Boolean, pressure: Boolean): Int = {
  var nextState = states("idle")
 if (state == states("idle")) {
    if      (coffee) { nextState = states("coding") }
    else if (idea) { nextState = states("idle") }
    else if (pressure) { nextState = states("writing") }
  } else if (state == states("coding")) {
    if      (coffee) { nextState = states("coding") } 
    else if (idea || pressure) { nextState = states("writing") }
  } else if (state == states("writing")) {
    if      (coffee || idea) { nextState = states("writing") }
    else if (pressure) { nextState = states("grad") }
  }
  nextState
}

test(new GradLife) { c =>
  // verify that the hardware matches the golden model
  for (state <- 0 to 3) {
    for (coffee <- List(true, false)) {
      for (idea <- List(true, false)) {
        for (pressure <- List(true, false)) {
          c.io.state.poke(state.U)
          c.io.coffee.poke(coffee.B)
          c.io.idea.poke(idea.B)
          c.io.pressure.poke(pressure.B)
          c.io.nextState.expect(gradLife(state, coffee, idea, pressure).U)
        }
      }
    }
  }
}
println("SUCCESS!!") // Scala Code: if we get here, our tests passed!
  }
}
