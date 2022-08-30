import chisel3._
// Chisel Code: Declare a new module definition
// Chisel Code, but pass in a parameter to set widths of ports

class MyOperators extends Module {
               val io = IO(new Bundle {
     val in      = Input(UInt(4.W))
     val out_add = Output(UInt(4.W))
     val out_sub = Output(UInt(4.W))
     val out_mul = Output(UInt(4.W))
}
)

              io.out_add := 1.U + 4.U
              io.out_sub := 2.U - 1.U
              io.out_mul := 4.U * 2.U
    }


// Let's now generate modules with different widths
object MyOperators extends App {
  println(getVerilogString(new MyOperators))
}
