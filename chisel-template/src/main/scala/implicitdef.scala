object MyImplicits {
sealed trait Verbosity
implicit case object Silent extends Verbosity
case object Verbose extends Verbosity
}