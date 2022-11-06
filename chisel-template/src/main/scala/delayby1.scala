
import chisel3._

import chisel3.util._

class DelayBy1_1(resetValue: Option[UInt] = None) extends Module {
  val io = IO(new Bundle {
    val in  = Input( UInt(16.W))
    val out = Output(UInt(16.W))
  })
  val reg = resetValue match {
    case Some(r) => RegInit(r)
    case None    => Reg(UInt())
  }
  reg := io.in
  io.out := reg
}

object DelayBy1_1  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new DelayBy1_1())
//   (new chisel3.stage.ChiselStage).emitVerilog(new DelayBy1_1())
  println(getVerilogString(new DelayBy1_1(Some(5.U))))
}
