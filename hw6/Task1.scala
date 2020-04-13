class Shape {
var color:String = "blue"
}

class Circle(radius1:Double = 2.0)extends Shape {
   var radius = radius1
   
   def this(color1:String, radius1:Double) = {
          this(radius1)
          this.color = color1
}    

   def area():Double = { radius*radius*3.14 }
}

class Rectangle(var width1:Double = 1.0, var len:Double = 1.0)extends Shape {
    var width = width1
    var length = len

    def this(color1:String, width1:Double, len:Double) = {
           this(width1, len)
           this.color = color1
}

    def area():Double = { width*length }

}

object Test{

     def main(args:Array[String]) {
    
var list:List[Shape] = Nil
val r = new scala.util.Random
var areatotal:Double = 0

for(i<-0 until 40) {
  var x:Int = r.nextInt(2)

  if(x==0) {
    val c = new Circle(r.nextDouble)
    list = list :+ c
    areatotal += c.area() }
 
   else {
     val rc = new Rectangle(r.nextDouble, r.nextDouble)
     list = list:+ rc
     areatotal += rc.area() }

}
     
println(areatotal)

}

}
