import chisel3._
// Chisel Code: Declare a new module definition
// Chisel Code, but pass in a parameter to set widths of ports
class Passthrough extends Module { 
  val io = IO(new Bundle {
    val in  = Input(UInt(4.W))
    val out = Output(UInt(4.W))
  })

  val two  = 1 + 1
  println(two)
  val utwo = 1.U + 1.U
  println(utwo)
  
  io.out := io.in
}

// Let's now generate modules with different widths
object Passthrough extends App {
  println(getVerilogString(new Passthrough))
}
