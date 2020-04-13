//3a

def foo(list1:List[String]):List[String] = {
    list1.map(_.reverse)
}

val result = foo(List("uno", "dos", "tres", "cuatro", "cinco"))
println(result)
