

def foo(list1:List  [String]):List[String] = {
    list1.map(_.reverse)
}

val result = foo(List("eth", "iop", "ia", "aye", "limta"))
println(result)
