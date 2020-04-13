//3b
import scala.math._

def foo(list1:List[Int]):Int = {
    var list2 = list1.map(x=> x*x)
    list2.foldLeft(0)(_+_)
}

var result:Int = foo(List(1,2,3,4,5))
println(result)