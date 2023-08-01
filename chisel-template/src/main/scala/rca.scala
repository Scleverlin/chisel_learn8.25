import chisel3._
import chisel3.util._

class FullAdder extends Module {
  val io = IO(new Bundle {
    val a    = Input(UInt(1.W))
    val b    = Input(UInt(1.W))
    val cin  = Input(UInt(1.W))
    val sum  = Output(UInt(1.W))
    val cout = Output(UInt(1.W))
  })

  // Full adder logic
  io.sum := io.a ^ io.b ^ io.cin
  io.cout := (io.a & io.b) | (io.a & io.cin) | (io.b & io.cin)
}

class RippleCarryAdder extends Module {
  val io = IO(new Bundle {
    val a    = Input(UInt(8.W))
    val b    = Input(UInt(8.W))
    val sum  = Output(Vec(8, UInt(1.W))) // 将sum改为Vector类型
    val cout = Output(UInt(1.W))
  })

  val fullAdders = Array.fill(8)(Module(new FullAdder))
  val carry = Wire(Vec(9, UInt(1.W)))
  val sumVec = Wire(Vec(8, UInt(1.W))) // 创建一个临时的向量

  carry(0) := 0.U
  for(i <- 0 until 8) {
    fullAdders(i).io.a := io.a(i)
    fullAdders(i).io.b := io.b(i)
    fullAdders(i).io.cin := carry(i)
    sumVec(i) := fullAdders(i).io.sum // 首先写入临时向量
    carry(i+1) := fullAdders(i).io.cout
  }

  io.cout := carry(8)
  io.sum := sumVec // 然后将临时向量的值赋给io.sum，不需要转换
}

class RippleCarryAdder_seq extends Module {
  val io = IO(new Bundle {
    val a    = Input(UInt(8.W))
    val b    = Input(UInt(8.W))
    val sum  = Output(Vec(8, UInt(1.W))) 
    val cout = Output(UInt(1.W))
  })

  val fullAdders = Array.fill(8)(Module(new FullAdder))
  val carry = Wire(Vec(9, UInt(1.W)))
  val sumReg = RegInit(VecInit(Seq.fill(8)(0.U(1.W)))) // 初始化一个全0的向量寄存器

  carry(0) := 0.U
  for(i <- 0 until 8) {
    fullAdders(i).io.a := io.a(i)
    fullAdders(i).io.b := io.b(i)
    fullAdders(i).io.cin := carry(i)
    sumReg(i) := fullAdders(i).io.sum // 将结果写入寄存器
    carry(i+1) := fullAdders(i).io.cout
  }

  io.cout := carry(8)
  io.sum := sumReg // 将寄存器的值赋给io.sum
}

object RippleCarryAdder_seq  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new RippleCarryAdder_seq())
}

object RippleCarryAdder  extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new RippleCarryAdder())
  
//   (new chisel3.stage.ChiselStage).emitVerilog(new RippleCarryAdder())
//   println(getVerilogString(new RippleCarryAdder()))
}