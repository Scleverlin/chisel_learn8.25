

import chisel3._
import chisel3.util._

class FindMax extends Module {
  val io = IO(new Bundle {
    val in  = Input(UInt(10.W))
    val max = Output(UInt(10.W))
  })

  val max = RegInit(0.U(10.W))
  when (io.in > max) {
    max := io.in
  }
  io.max := max
}

object FindMax   extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new FindMax ())
    println(getVerilogString (new FindMax ))
}
