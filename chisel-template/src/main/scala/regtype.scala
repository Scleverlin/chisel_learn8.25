


import chisel3._
import chisel3.util._

class Comb extends Module {
  val io = IO(new Bundle {
    val in  = Input(SInt(12.W))
    val out = Output(SInt(12.W))
  })

  val delay: SInt = Reg(SInt(12.W))
  delay := io.in
  io.out := io.in - delay
}

object Comb   extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Comb ())
    println(getVerilogString (new Comb ))
}
