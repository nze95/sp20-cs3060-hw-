import scala.io.Source
import scala.collection.mutable.HashMap

object Test {

def main(args: Array[String]) {
	
     var map = new HashMap[String,Int]

     val lines = Source.fromFile("story.txt").getLines

     var total:Int = 0
     var size:Int = 0
     var distinct:Int = 0

     for(line<-lines){
        val list = line.split("\\s+")

        size = list.size

        var num:Int = 1
        var i:Int = 0

        while(i < size) {

        var word = list(i)

        if(!map.contains(word)) {
           map += word -> num
           total += 1      
           distinct += 1      }

        else {
           map(word) += 1 
           total += 1 }

        i = i + 1
      }

  }   

      map.foreach(x => println(x))
      println ("There are " + total + " words")
      println ("There are " + distinct + " distinct words")
 }

}