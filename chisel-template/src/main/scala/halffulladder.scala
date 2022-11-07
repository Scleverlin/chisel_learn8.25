import chisel3._

import chisel3.util._

class HalfFullAdder(val hasCarry: Boolean) extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val carryIn = if (hasCarry) Some(Input(UInt(1.W))) 
                  else None
    val s = Output(UInt(1.W))
    val carryOut = Output(UInt(1.W))
  })
  val sum = io.a +& io.b +& io.carryIn.getOrElse(0.U)
  io.s := sum(0)
  io.carryOut := sum(1)
}

object HalfFullAdder  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new HalfFullAdder(false))
//   (new chisel3.stage.ChiselStage).emitVerilog(new HalfFullAdder())
  println(getVerilogString(new HalfFullAdder(true)))
}