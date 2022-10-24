import chisel3._

import chisel3.util._

class DelayBy1(resetValue: Option[UInt] = None) extends Module {
    val io = IO(new Bundle {
        val in  = Input( UInt(16.W))
        val out = Output(UInt(16.W))
    })
    val reg = if (resetValue.isDefined) { // resetValue = Some(number)
        RegInit(resetValue.get)
    } else { //resetValue = None
        Reg(UInt())
    }
    reg := io.in
    io.out := reg
}

object DelayBy1  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new DelayBy1(Some(3.U)))
//   (new chisel3.stage.ChiselStage).emitVerilog(new DelayBy1())
  println(getVerilogString(new DelayBy1()))
}
