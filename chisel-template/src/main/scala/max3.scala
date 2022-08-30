// Max3 returns the max of its 3 arguments

import chisel3._

import chisel3.util._


class Max3 extends Module {
  val io = IO(new Bundle {
    val in1 = Input(UInt(16.W))
    val in2 = Input(UInt(16.W))
    val in3 = Input(UInt(16.W))
    val out = Output(UInt(16.W))
  })
    
  when(io.in1 >= io.in2 && io.in1 >= io.in3) {
    io.out := io.in1  
  }.elsewhen(io.in2 >= io.in3) {
    io.out := io.in2 
  }.otherwise {
    io.out := io.in3
  }
}

object Max3  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Max3())
    println(getVerilogString (new Max3))
}
