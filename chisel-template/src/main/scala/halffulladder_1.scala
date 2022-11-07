import chisel3._

import chisel3.util._

class HalfFullAdder_1(val hasCarry: Boolean) extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val carryIn = Input(if (hasCarry) UInt(1.W) else UInt(0.W))
    val s = Output(UInt(1.W))
    val carryOut = Output(UInt(1.W))
  })
  val sum = io.a +& io.b +& io.carryIn
  io.s := sum(0)
  io.carryOut := sum(1)
}

object HalfFullAdder_1  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new HalfFullAdder_1(false))
//   (new chisel3.stage.ChiselStage).emitVerilog(new HalfFullAdder_1())
  println(getVerilogString(new HalfFullAdder_1(true)))
}