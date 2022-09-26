import chisel3._
import chisel3.util._

class ParameterizedWidthAdder (in0Width: Int, in1Width: Int, sumWidth: Int) extends Module {
  require(in0Width >= 0)
  require(in1Width >= 0)
  require(sumWidth >= 0)

  val io = IO(new Bundle {
    val in0 = Input(UInt(in0Width.W))
    val in1 = Input(UInt(in1Width.W))
    val sum = Output(UInt(sumWidth.W))
  })
  // a +& b includes the carry, a + b does not
  io.sum := io.in0 +& io.in1
}

object ParameterizedWidthAdder  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new ParameterizedWidthAdder (1,4,6))
    println(getVerilogString (new ParameterizedWidthAdder (1,4,6) ))
}
