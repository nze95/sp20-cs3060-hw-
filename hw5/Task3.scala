import scala.io.Source
import java.io._
import io.StdIn._

object Test {

def main(args: Array[String]) {

println("Please enter the name of the file")
val filename = scala.io.StdIn.readLine 

val lines = Source.fromFile(filename).getLines

for(line <- lines) {
 
     var i = 0
   
     var found = " "

     val word = line.split("\\s+")

     var sizes = word.size

     while(i < sizes) {

     if (word(i) == "Prolog" || word(i) == "prolog") {
          found = "pexist" }

     else if(word(i) == "Scala" || word(i) == "scala") {
          found = "scalaexist" } 

     else
          { found = "non" }
     
     i = i + 1
}

if (found == "pexist") {
   println("The file content is not interesting") }

else if (found == "scalaexist") {
   println("The file content is interesting") }

else {
   println("The file is meaningless") }

}

}

}